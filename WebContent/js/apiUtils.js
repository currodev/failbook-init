/**
 * 
 */

function sendAPIRequest(resource, method, data, timeout) {
	if (timeout)
		timeout = timeout;
	else
		timeout = 0;

	headers = {
		'Accept' : 'application/vnd.failbook.v1+json',
	};

	if (typeof data == "undefined")
		data = {};

	var req = $.ajax({
		timeout : timeout,
		headers : headers,
		async : true,
		dataType : 'json',
		type : method,
		// Send array values like curl
		traditional : true,
		// IE workaround
		cache : false,
		url : "/Failbook/" + resource,
		data : data,
	});
	return req;
}

function getMessageFromErrorResponse(response) {
	return response.responseJSON.message;
}