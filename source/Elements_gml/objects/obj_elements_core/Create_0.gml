// #####################################################################
// # Create Event (auto-generated, DO NOT EDIT)
// #####################################################################

// These are the builtin converters from some of the content types.
// More can be added or replaced using the `request_body_set_converter` function.
/// @ignore
type_converters = { };
type_converters[$ "*/*"] = function(_i) { return _i; };
type_converters[$ "application/json"] = function(_i) { 
    return json_stringify(_i, false, function(_key, _value) {
        // This is an helper function to remove undefined from structs
	    static __strip = function(_key, _value) {
		    if (is_undefined(_value)) return;
		    self[$ _key] = _value;
	    }
        // If we find a struct we create a new one with stripped undefined values
	    if (is_struct(_value)) {
            with({}) { // This is the most performant way to change context
	            struct_foreach(_value, __strip);
	            return self;
            }
	    }
	    return _value; // We return the value as normal
    }); 
};
type_converters[$ "application/x-www-form-urlencoded"] = function(_i) { return _i; };
type_converters[$ "text/plain"] = function(_i) { return string(_i) };

// Where all auth-tokens are stored
auth_tokens = {};

// Store in-progress requests and also registered response hooks.
// These serve as lookup tables (ds_map are used due to the nature of the indices)

requests = ds_map_create();
response_hooks = ds_map_create();

/**
 * @param {Real} _request_id
 * @param {Struct.ElementsHttpRequest} _request_data
 */
function register_request(_request_id, _request_data) {
	requests[? _request_id] = _request_data;
}

