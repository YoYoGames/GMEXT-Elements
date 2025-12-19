// #####################################################################
// # Internal Definitions (auto-generated, DO NOT EDIT)
// #####################################################################

/// @returns {String}
function _elements_options_get_rest_url() {
	static _url = extension_get_option_value("Elements", "server_rest_url");
	return _url;
}

/// @returns {Bool}
function _elements_options_is_debug() {
	static _enabled = bool(extension_get_option_value("Elements", "debug_logging"));
	return _enabled;
}


/**
 * @func _elements_get_singleton
 * Returns the Elements core singleton (the single instance of 'obj_elements_core').
 * @param {String} _where Usually the '_GMFUNCTION_' macro – used only for clearer error messages.
 * @ignore 
 */
function _elements_get_singleton(_where)
{
	// Generator function
	static instance = instance_create_depth(0, 0, 0, obj_elements_core);
	with (instance)
	{
		return self;
	}
	show_error($"{_where} :: Failed to get the {obj_elements_core} singleton instance." , true);
}

/**
 * @func _elements_request_auth_set_token
 * Stores or updates an authentication token under the given ID.
 * This is typically used when acquiring tokens from login endpoints,
 * OAuth flows, or any credential-granting operation.
 * The token is stored inside the 'auth_token' map of
 * 'obj_elements_core', which is accessed via the singleton.
 * @param {String} _token_id One of the following ids: "auth_bearer", "session_secret".
 * @param {String} _token The actual token string (e.g. JWT, API key, etc.)
 * @returns {Undefined} 
 */
function _elements_request_auth_set_token(_token_id, _token)
{
	var _instance = _elements_get_singleton(_GMFUNCTION_);
	_instance.auth_tokens[$ _token_id] = _token;
}

/**
 * @func _elements_request_auth_get_token
 * Retrieves a previously stored token by ID.
 * If the ID does not exist in the token map, 'undefined' is returned.
 * This is typically used by the internal request system when applying
 * security credentials to headers, query parameters, or request bodies.
 * @param {String} _token_id One of the following ids: "auth_bearer", "session_secret".
 * @returns {String} The token string, or undefined if not found.
 */
function _elements_request_auth_get_token(_token_id)
{
	var _instance = _elements_get_singleton(_GMFUNCTION_);
	return _instance.auth_tokens[$ _token_id];
}

/**
 * @func _elements_request_body_set_converter
 * Convert a body struct/value to the wire format that matches the content-type header. Falls back to passthrough.
 * Registers (or replaces) a converter function for the given 'Content-Type'.
 * @param {String} _content_type Content type value to match (case-sensitive)
 * @param {Function} _function A function that takes '(value, where)' and returns a string|buffer|any.
 */
function _elements_request_body_set_converter(_content_type, _function)
{
	var _instance = _elements_get_singleton(_GMFUNCTION_);
	_instance.type_converters[$ _content_type] = _function;
}

/**
 * @func _elements_request_body_get_converter
 * Retrieves the converter assigned to the specified 'Content-Type'.
 * Useful for testing or chaining to the existing implementation.
 * @param {String} _content_type Content type value to match (case-sensitive)
 * @returns {Function} The converter function previously assigned (or default one).
 */
function _elements_request_body_get_converter(_content_type)
{
	var _instance = _elements_get_singleton(_GMFUNCTION_);
	return _instance.type_converters[$ _content_type];
}

/**
 * @func _elements_request_response_set_hook
 * Sets a default request reponse hook for a given http status.
 * @param {Real} _code The http response status to attach the hook too.
 * @param {Function} _hook The interseption function that will be executed.
 */
function _elements_request_response_set_hook(_code, _hook)
{
	var _instance = _elements_get_singleton(_GMFUNCTION_);
	_instance.response_hooks[? _code] = _hook;
}

/**
 * @func _elements_request_body_get_hook
 * Gets the default request reponse hook for a given http status.
 * @param {Real} _code The http response status to retreive the hook function from.
 * @returns {Function} The hook function previously assigned (or default one).
 */
function _elements_request_body_get_hook(_code)
{
	var _instance = _elements_get_singleton(_GMFUNCTION_);
	return _instance.response_hooks[? _code];
}


/**
 * A wrapper around an http request index that allows retries.
 * @param {String} _url Url used in the request (without the parameters)
 * @param {Struct} _params Url params that will be sent with the request.
 * @param {String} _method Method that will be used by the request.
 * @param {Any} _body The body of the request can be of any type.
 * @param {String} _content_type The content type used for formatting the body.
 * @param {Array} _security An array with all the security schemes that should be injected into the request.
 * @param {Function} _callback The callback function to be executed once the request finishes.
 * @param {String} _where The callee of this function (used for debugging purposes).
 */
function ElementsRequest(_url, _params, _method, _body, _content_type, _security, _callback, _where) constructor
{
	/**
	 * create private scope
	 * @ignore
	 */
	__ = {
		url: _url,
		params: _params,
		http_method: _method,
	    content_type: _content_type,
		body_type: 0, // string
		body: undefined,
		callback: _callback,
		security: _security,
		where: _where,
	}
	
	attempts = 0;
	
	/**
	 * @func get_callback
	 * Returns the callback attatched to this request.
	 * @returns {Function}
	 */
	static get_callback = function()
	{
		return __.callback;
	}
	
	/**
	 * @func send
	 * Triggers the actual HTTP request.
	 * @returns {Real}
	 */
	static send = function()
	{
		var _id = -1;
	    var _self = self;
		with (__)
	    {
	        // make sure we have a struct cus we might need it for auth
	        var _params = params ?? {};
	
	        // reconstruct header we might need it for auth	
			var _header = ds_map_create();
	
	        // inject security tokens lazily
	        var _count = array_length(security);
	        for (var _i = 0; _i < _count; _i++) {
	            _self._apply_auth(_header, _params, security[_i], where);
			}
	
	        // build final url from cached params
	        var _url = _self._build_url(url, _params);
	
	        if (!is_undefined(body))
	        {
		        _header[? "Content-Type"] = content_type;
		        switch (body_type) 
		        {
			        case 0: // string
				        var _string_body = body;
				        _id = http_request(_url, http_method, _header, _string_body);
				        break;
			        case 1: // buffer
				        var _buffer_body = buffer_base64_decode(body);
				        _id = http_request(_url, http_method, _header, _buffer_body);
				        buffer_delete(_buffer_body);
				        break;
		        }
	        }
	        else 
	        {
		        // Bodyless route (just use empty string)
		        _id = http_request(_url, http_method, _header, "");
	        }
	
	        var _instance = _elements_get_singleton(where);
			_instance.requests[? _id] = _self;
	
	        // free header
	        ds_map_destroy(_header);
		}
		attempts++;
		return _id;
	}
	
	/**
	 * @func retry
	 * Alias to 'send' which will trigger the actual HTTP request.
	 * @returns {Real}
	 */
	static retry = function() { return send(); }
	
	
	/**
	 * @func _process_body
	 * Processes the body of the http request.
	 * @param {Any} _body The body of the request can be of any type.
	 * @param {String} _content_type The content type used for formatting the body.
	 * @param {String} _where The callee of this function (used for debugging purposes).
	 * @returns {String|Id.Buffer}
	 * @ignore
	 */
	static _process_body = function(_body, _content_type, _where)
	{
	    var _body_converter = _elements_request_body_get_converter(_content_type);
	    if (!is_callable(_body_converter)) 
	    {
	        show_error($"{_where} :: No converter for '{_content_type}'.", true);
	    }
	
	    _body = _body_converter(_body); // The result here needs to be either a string or a buffer
	    if (!is_string(_body) && (!is_handle(_body) || !string_starts_with(string(_body), "ref buffer")))
	    {
	        show_error($"{_where} :: The body process function failed to output either a string or a valid buffer.", true);
	    }
	
	    // feather ignore once GM1045
	    return _body;
	}
	
	
	/**
	 * @func _build_url
	 * Builds the full url from the base url and the cached params.
	 * @param {String} _url_base
	 * @param {Struct} _params
	 * @returns {String}
	 * @ignore
	 */
	static _build_url = function(_url_base, _params = undefined)
	{
	    // cache an internal array for storing params (this should reduce memory allocations)
	    static _result = [];
	
	    // build params entry for array value
	    static params_build_array = function(_key, _array)
	    {
		    var _length = array_length(_array);
		    var _result = array_create(_length);
		    for (var _i = 0; _i < _length; ++_i) {
			    _result[_i]=$"{_key}={_array[_i]}"; 
		    }
		    return string_join_ext("&", _result);
	    } 
	    
		var _keys = struct_get_names(_params);
		var _length = array_length(_keys);
	
	    // build full url from params (remove undefined entries)
	    var _j = 0;
		for (var _i = 0; _i < _length; _i++)
		{
			var _key = _keys[_i];
			var _value = struct_get(_params, _keys[_i]);
	
	        if (is_undefined(_value)) continue;
	
			_result[_j++] = is_array(_value) ? params_build_array(_key, _value) : $"{_key}={_value}";
		}
	
		var _str = string_pos("?", _url_base) == 0 ? "?" : "";
		_str += string_join_ext("&", _result, 0, _j);
	
		return _url_base + _str;
	}
	
	/**
	 * @func _apply_auth
	 * Injects credentials for the named security scheme.
	 * @param {Id.DsMap} _header Map that will contain the header metadata.
	 * @param {Struct} _params Url params that will be sent with the request.
	 * @param {String} _scheme The name of the secutiry scheme being processed.
	 * @param {String} _where The callee of this function (used for debugging purposes).
	 * @ignore 
	 */
	static _apply_auth = function(_header, _params, _scheme, _where)
	{
		static missing = function(_where, _token)
		{
			show_debug_message($"{_where} :: missing credential for {_token}, skipping this auth method.");
		};
		
		switch (_scheme)
		{
			case "auth_bearer":
				var _auth_bearer_token = _elements_request_auth_get_token("auth_bearer");
				if (is_undefined(_auth_bearer_token))
				{
					missing("auth_bearer", _where);
					break;
				}
				_header[? "Authorization"] = _auth_bearer_token;
				break;
			case "session_secret":
				var _session_secret_token = _elements_request_auth_get_token("session_secret");
				if (is_undefined(_session_secret_token))
				{
					missing("session_secret", _where);
					break;
				}
				_header[? "Elements-SessionSecret"] = _session_secret_token;
				break;
			case undefined:
				break;
			default:
				show_debug_message($"{_where} :: No auth rule for '{_scheme}'.");
				break;
		}
	};
	
	// Handle request body
	if (!is_undefined(_body)) {
	    _body = _process_body(_body, _content_type, _where);
	    if (!is_string(_body)) 
	    {
	    	__.body_type = 1; // buffer
	    	__.body = buffer_base64_encode(_body, 0, -1); // we base64 encode the buffer so we can re-use it.
	    }
		else
		{
			__.body = _body;
		}
	}
}

/**
 * A wrapper function that will create a new ElementsRequest and immediately trigger it.
 * @param {String} _url Url used in the request (without the parameters)
 * @param {Struct|Undefined} _params Url params that will be sent with the request.
 * @param {String} _method Method that will be used by the request.
 * @param {Any} _body The body of the request can be either a string or a buffer.
 * @param {String|Undefined} _content_type The content type used for formatting the body.
 * @param {Array} _security An array with all the security schemes that should be injected into the request.
 * @param {Function} _callback The callback function to be executed once the request finishes.
 * @param {String} _where The callee of this function (used for debugging purposes).
 * @returns {Real}
 * @ignore
 */
function _elements_create_request(_url, _params, _method, _body, _content_type, _security, _callback, _where)
{
	var _request = new ElementsRequest(_url, _params, _method, _body, _content_type, _security, _callback, _where);
	return _request.send();
}

