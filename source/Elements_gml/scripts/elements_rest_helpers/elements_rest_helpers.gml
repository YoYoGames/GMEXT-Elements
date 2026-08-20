// #####################################################################
// # Internal Definitions (auto-generated, DO NOT EDIT)
// #####################################################################

/**
 * @returns {String} 
 */
function _elements_options_get_rest_url()
{
    return extension_get_option_value("Elements", "server_rest_url");
}

/**
 * @returns {Bool} 
 */
function _elements_options_is_debug()
{
    return bool(extension_get_option_value("Elements", "debug_logging"));
}


/**
 * @param {Any} __value__ Value to percent-encode.
 * @returns {String} 
 * @ignore 
 */
function _elements_url_encode(__value__)
{
    if (is_undefined(__value__))
    {
        return "";
    }

    var __text__ = string(__value__);
    var __buffer__ = buffer_create(string_byte_length(__text__) + 1, buffer_fixed, 1);
    buffer_write(__buffer__, buffer_text, __text__);
    var __size__ = buffer_tell(__buffer__);
    var __out__ = "";

    for (var __i__ = 0; __i__ < __size__; __i__++)
    {
        var __byte__ = buffer_peek(__buffer__, __i__, buffer_u8);
        if ((__byte__ >= 48 && __byte__ <= 57) || (__byte__ >= 65 && __byte__ <= 90) || (__byte__ >= 97 && __byte__ <= 122) || __byte__ == 45 || __byte__ == 46 || __byte__ == 95 || __byte__ == 126)
        {
            __out__ += chr(__byte__);
        }
        else
        {
            var __hex__ = "0123456789ABCDEF";
            __out__ += "%" + string_char_at(__hex__, (__byte__ >> 4) + 1) + string_char_at(__hex__, (__byte__ & 15) + 1);
        }
    }

    buffer_delete(__buffer__);
    return __out__;
}


/**
 * @param {String} __where__ Caller location for error messages.
 * @returns {Id.Instance} 
 * @ignore 
 */
function _elements_get_singleton(__where__)
{
    static __singleton__ = instance_create_depth(0, 0, 0, obj_elements_core);
    with (__singleton__)
    {
        return self;
    }
    show_error($"{__where__} :: Failed to get the obj_elements_core singleton.", true);
}

/**
 * @param {String} _token_id One of: "auth_bearer", "session_secret"
 * @param {String} _token
 */
function elements_request_auth_set_token(_token_id, _token)
{
    var __instance__ = _elements_get_singleton(_GMFUNCTION_);
    __instance__.auth_tokens[$ _token_id] = _token;
}

/**
 * @param {String} _token_id One of: "auth_bearer", "session_secret"
 * @returns {String} 
 */
function _elements_request_auth_get_token(_token_id)
{
    var __instance__ = _elements_get_singleton(_GMFUNCTION_);
    return __instance__.auth_tokens[$ _token_id];
}

/**
 * @param {String} _content_type
 * @param {Function} _function function(_body, _header_ds_map) → String|Id.Buffer
 */
function elements_request_body_set_converter(_content_type, _function)
{
    var __instance__ = _elements_get_singleton(_GMFUNCTION_);
    __instance__.type_converters[$ _content_type] = _function;
}

/**
 * @param {String} _content_type
 * @returns {Function} 
 */
function _elements_request_body_get_converter(_content_type)
{
    var __instance__ = _elements_get_singleton(_GMFUNCTION_);
    var __conv__ = __instance__.type_converters[$ _content_type];
    if (!is_undefined(__conv__))
    {
        return __conv__;
    }

    // a +json subtype is JSON, and serialises like it
    if (string_ends_with(_content_type, "+json"))
    {
        return __instance__.type_converters[$ "application/json"];
    }

    return undefined;
}

/**
 * @param {Real} _code
 * @param {Function} _hook
 */
function elements_request_response_set_hook(_code, _hook)
{
    var __instance__ = _elements_get_singleton(_GMFUNCTION_);
    __instance__.response_hooks[? _code] = _hook;
}

/**
 * @param {Real} _code
 * @returns {Function} 
 */
function _elements_request_response_get_hook(_code)
{
    var __instance__ = _elements_get_singleton(_GMFUNCTION_);
    return __instance__.response_hooks[? _code];
}


/**
 * @param {String} _url
 * @param {Struct|Undefined} _params
 * @param {String} _method
 * @param {Struct|Undefined} _headers Per-request header parameters from the spec.
 * @param {Any} _body
 * @param {String|Undefined} _content_type
 * @param {Array|Undefined} _security
 * @param {Struct|Undefined} _cookies Per-request cookies merged with the cookie jar on send.
 * @param {Function} _callback
 * @param {String} __where__
 */
function ElementsRequest(_url, _params, _method, _headers, _body, _content_type, _security, _cookies, _callback, __where__) constructor
{
    __ = {
        url: _url,
        params: _params,
        http_method: _method,
        headers: _headers,
        content_type: _content_type,
        raw_body: undefined,
        callback: _callback,
        security: _security,
        cookies: _cookies,
        where: __where__
    };

    attempts = 0;

    /**
     * @returns {Function} 
     */
    static get_callback = function()
    {
        return __.callback;
    };

    /**
     * @returns {Real} 
     */
    static send = function()
    {
        var __id__ = -1;
        var __self__ = self;
        with (__)
        {
            var __params__ = params ?? {};
            var __header__ = ds_map_create();

            // endpoint header parameters
            if (!is_undefined(headers))
            {
                var __header_keys__ = struct_get_names(headers);
                var __header_count__ = array_length(__header_keys__);
                for (var __i__ = 0; __i__ < __header_count__; __i__++)
                {
                    var __k__ = __header_keys__[__i__];
                    var __v__ = headers[$ __k__];
                    if (!is_undefined(__v__))
                    {
                        __header__[? __k__] = string(__v__);
                    }
                }
            }

            var __instance__ = _elements_get_singleton(where);

            // cookies: jar entries first, then per-request overrides
            var __cookie_parts__ = [];
            var __j__ = 0;
            var __jar_keys__ = struct_get_names(__instance__.cookie_jar);
            var __jar_count__ = array_length(__jar_keys__);
            for (var __i__ = 0; __i__ < __jar_count__; __i__++)
            {
                var __k__ = __jar_keys__[__i__];
                __cookie_parts__[__j__++] = $"{__k__}={__instance__.cookie_jar[$ __k__]}";
            }
            if (!is_undefined(cookies))
            {
                var __exp_keys__ = struct_get_names(cookies);
                var __exp_count__ = array_length(__exp_keys__);
                for (var __i__ = 0; __i__ < __exp_count__; __i__++)
                {
                    var __k__ = __exp_keys__[__i__];
                    __cookie_parts__[__j__++] = $"{__k__}={cookies[$ __k__]}";
                }
            }
            if (__j__ > 0)
            {
                __header__[? "Cookie"] = string_join_ext("; ", __cookie_parts__, 0, __j__);
            }

            // inject security
            var __sec_count__ = is_array(security) ? array_length(security) : 0;
            for (var __i__ = 0; __i__ < __sec_count__; __i__++)
            {
                __self__._apply_auth(__header__, __params__, security[__i__], where);
            }

            var __url__ = __self__._build_url(url, __params__);

            if (!is_undefined(raw_body))
            {
                // set Content-Type before converter so it can override (e.g. multipart boundary)
                __header__[? "Content-Type"] = content_type;
                var __processed__ = __self__._process_body(raw_body, content_type, __header__, where);
                __id__ = http_request(__url__, http_method, __header__, __processed__);
                // free only a buffer the converter allocated, never the caller's
                if (!is_string(__processed__) && __processed__ != raw_body)
                {
                    buffer_delete(__processed__);
                }
            }
            else
            {
                __id__ = http_request(__url__, http_method, __header__, "");
            }

            __instance__.requests[? __id__] = __self__;
            ds_map_destroy(__header__);
        }
        attempts++;
        return __id__;
    };

    /**
     * @returns {Real} 
     */
    static retry = function()
    {
        return send();
    };

    /**
     * @param {Any} _body
     * @param {String} _content_type
     * @param {Id.DsMap} _header Converter may mutate this (e.g. multipart sets boundary).
     * @param {String} __where__
     * @returns {String|Id.Buffer} 
     * @ignore 
     */
    static _process_body = function(_body, _content_type, _header, __where__)
    {
        var __conv__ = _elements_request_body_get_converter(_content_type);
        if (!is_callable(__conv__))
        {
            show_error($"{__where__} :: No converter for '{_content_type}'.", true);
        }
        _body = __conv__(_body, _header);
        if (!is_string(_body) && (!is_handle(_body) || !string_starts_with(string(_body), "ref buffer")))
        {
            show_error($"{__where__} :: Body converter must return a string or buffer.", true);
        }
        // feather ignore once GM1045
        return _body;
    };

    /**
     * @param {String} _url_base
     * @param {Struct|Undefined} [_params]
     * @returns {String} 
     * @ignore 
     */
    static _build_url = function(_url_base, _params = undefined)
    {
        if (is_undefined(_params))
        {
            return _url_base;
        }

        var __pairs__ = [];
        var __n__ = 0;
        var __keys__ = struct_get_names(_params);
        var __count__ = array_length(__keys__);

        for (var __i__ = 0; __i__ < __count__; __i__++)
        {
            var __key__ = __keys__[__i__];
            var __value__ = struct_get(_params, __key__);
            if (is_undefined(__value__))
            {
                continue;
            }
            var __enc_key__ = _elements_url_encode(__key__);
            if (is_array(__value__))
            {
                var __alen__ = array_length(__value__);
                for (var __a__ = 0; __a__ < __alen__; __a__++)
                {
                    __pairs__[__n__++] = $"{__enc_key__}={_elements_url_encode(__value__[__a__])}";
                }
            }
            else
            {
                __pairs__[__n__++] = $"{__enc_key__}={_elements_url_encode(__value__)}";
            }
        }

        if (__n__ == 0)
        {
            return _url_base;
        }
        var __sep__ = string_pos("?", _url_base) == 0 ? "?" : "&";
        return _url_base + __sep__ + string_join_ext("&", __pairs__, 0, __n__);
    };

    /**
     * @param {Id.DsMap} _header
     * @param {Struct} _params
     * @param {String} _scheme
     * @param {String} __where__
     * @ignore 
     */
    static _apply_auth = function(_header, _params, _scheme, __where__)
    {
        static missing = function(__where__, _token)
        {
            show_debug_message($"{__where__} :: missing credential for '{_token}', skipping auth.");
        };

        switch (_scheme)
        {
            case "auth_bearer":
                var __auth_bearer_token__ = _elements_request_auth_get_token("auth_bearer");
                if (is_undefined(__auth_bearer_token__))
                {
                    missing(__where__, "auth_bearer");
                    break;
                }
                _header[? "Authorization"] = __auth_bearer_token__;
                break;
            case "session_secret":
                var __session_secret_token__ = _elements_request_auth_get_token("session_secret");
                if (is_undefined(__session_secret_token__))
                {
                    missing(__where__, "session_secret");
                    break;
                }
                _header[? "Elements-SessionSecret"] = __session_secret_token__;
                break;
            case undefined:
                break;
            default:
                show_debug_message($"{__where__} :: No auth rule for '{_scheme}'.");
                break;
        }
    };

    // body processing deferred to send() so the converter can see the live header
    if (!is_undefined(_body))
    {
        __.raw_body = _body;
    }
}

/**
 * @param {String} _url
 * @param {Struct|Undefined} _params
 * @param {String} _method
 * @param {Struct|Undefined} _headers Header parameters declared by the endpoint.
 * @param {Any} _body
 * @param {String|Undefined} _content_type
 * @param {Array|Undefined} _security
 * @param {Struct|Undefined} _cookies
 * @param {Function} _callback
 * @param {String} __where__
 * @returns {Real} 
 * @ignore 
 */
function _elements_create_request(_url, _params, _method, _headers, _body, _content_type, _security, _cookies, _callback, __where__)
{
    var __req__ = new ElementsRequest(_url, _params, _method, _headers, _body, _content_type, _security, _cookies, _callback, __where__);
    return __req__.send();
}


/**
 * @param {String} __name__
 * @param {String} __value2__
 */
function elements_cookie_set(__name__, __value2__)
{
    var __instance__ = _elements_get_singleton(_GMFUNCTION_);
    __instance__.cookie_jar[$ __name__] = __value2__;
}

/**
 * @param {String} __name__
 * @returns {String|Undefined} 
 */
function elements_cookie_get(__name__)
{
    var __instance__ = _elements_get_singleton(_GMFUNCTION_);
    return __instance__.cookie_jar[$ __name__];
}

/**
 * @param {String} __name__
 */
function elements_cookie_delete(__name__)
{
    var __instance__ = _elements_get_singleton(_GMFUNCTION_);
    struct_remove(__instance__.cookie_jar, __name__);
}

/**
 */
function elements_cookie_clear()
{
    var __instance__ = _elements_get_singleton(_GMFUNCTION_);
    __instance__.cookie_jar = {};
}

/**
 * @param {String} _set_cookie_header Raw Set-Cookie header value, may be comma-joined.
 * @ignore 
 */
function _elements_cookie_capture(_set_cookie_header)
{
    var __instance__ = _elements_get_singleton(_GMFUNCTION_);
    var __parts__ = string_split(_set_cookie_header, ",");
    var __count__ = array_length(__parts__);
    for (var __i__ = 0; __i__ < __count__; __i__++)
    {
        var __pair_parts__ = string_split(__parts__[__i__], ";");
        if (array_length(__pair_parts__) == 0)
        {
            continue;
        }
        var __pair__ = string_trim(__pair_parts__[0]);
        var __eq__ = string_pos("=", __pair__);
        if (__eq__ <= 0)
        {
            continue;
        }
        var __name__ = string_trim(string_copy(__pair__, 1, __eq__ - 1));
        var __value__ = string_copy(__pair__, __eq__ + 1, string_length(__pair__) - __eq__);
        if (string_length(__name__) > 0)
        {
            __instance__.cookie_jar[$ __name__] = __value__;
        }
    }
}

