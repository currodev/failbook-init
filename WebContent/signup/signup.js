/**
 * 
 */

$(document).ready(function() {
	$("#buttonSignup").click(function() {
		signUp();
	})
});

function signUp() {

	data = {
		"email" : $("#inputEmail").val(),
		"password" : $("#inputPassword").val(),
		"username" : $("#inputName").val(),
		"company" : $("#inputCompany").val(),
		"country" : $("#inputCountry").val(),
		"motto" : $("#inputMotto").val(),
		"interest" : $("#inputInterest").val(),
	}

	var req = sendAPIRequest("User", "POST", data);
	req.done(function(response) {
		window.location.href = response.message;
	});
	req.fail(function(response) {
		var message = getMessageFromErrorResponse(response);
		$("#signup-result").removeClass("alert-success");
		$("#signup-result").addClass("alert-danger");
		$("#signup-result").text(message);
	});

}