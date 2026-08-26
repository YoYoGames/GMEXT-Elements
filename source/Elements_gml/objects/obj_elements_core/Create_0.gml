// #####################################################################
// # Create Event (auto-generated, DO NOT EDIT)
// #####################################################################

/// @ignore
type_converters = {};
type_converters[$ "*/*"] = function(__body__) { return __body__; };
type_converters[$ "application/json"] = function(__body__) {
    // The replacer drops undefined fields so optional properties are omitted
    // rather than serialised as null.
    return json_stringify(__body__, false, function(__key__, __value__) {
	    static __strip__ = function(__k__, __v__) {
		    if (is_undefined(__v__)) return;
		    self[$ __k__] = __v__;
	    }
	    if (is_struct(__value__)) {
            with({}) {
	            struct_foreach(__value__, __strip__);
	            return self;
            }
	    }
	    return __value__;
    });
};
type_converters[$ "application/x-www-form-urlencoded"] = function(__body__) { return __body__; };
type_converters[$ "text/plain"] = function(__body__) { return string(__body__); };
type_converters[$ "multipart/form-data"] = function(__body__, __header__) {
    var __boundary__ = "----Boundary" + string(current_time) + string(irandom(999999));
    __header__[? "Content-Type"] = $"multipart/form-data; boundary={__boundary__}";
    var __parts__ = "";
    var __keys__ = struct_get_names(__body__);
    for (var __j__ = 0; __j__ < array_length(__keys__); __j__++) {
        var __k__ = __keys__[__j__];
        var __v__ = __body__[$ __k__];
        if (is_undefined(__v__)) continue;
        __parts__ += $"--{__boundary__}\r\nContent-Disposition: form-data; name=\"{__k__}\"";
        // is_handle guards buffer_exists, which throws on a string and reports true
        // for any real matching a live buffer id - buffer ids start at 0.
        if (is_handle(__v__) && buffer_exists(__v__)) {
            // A buffer is binary: interpolating it would write "ref buffer".
            __parts__ += $"; filename=\"{__k__}\"\r\nContent-Type: application/octet-stream\r\n";
            __parts__ += "Content-Transfer-Encoding: base64\r\n\r\n";
            __parts__ += buffer_base64_encode(__v__, 0, buffer_get_size(__v__)) + "\r\n";
        } else {
            __parts__ += $"\r\n\r\n{__v__}\r\n";
        }
    }
    return __parts__ + $"--{__boundary__}--\r\n";
};

auth_tokens = {};
cookie_jar = {};

requests = ds_map_create();
response_hooks = ds_map_create();

