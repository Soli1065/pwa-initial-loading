document.addEventListener("DOMContentLoaded", function() {
  // Add event listener to submit button
  document.getElementById("submitButton").addEventListener("click", function() {
    // Get mobile number from input field
    var phoneNumber = document.getElementById("phoneNumberInput").value;

    // Perform any necessary validation

    // Simulate API call for OTP
    // For demonstration purposes, we'll just show an alert
    alert("API call for OTP with mobile number: " + phoneNumber);

    // Redirect to OTP page
    window.location.href = "otp_page.html";
  });

  // Add event listener to privacy policy text
  document.getElementById("privacyPolicyText").addEventListener("click", function() {

    // Open privacy policy page in a new tab/window
    window.open("privacy_policy.html", "_blank");
  });
});
