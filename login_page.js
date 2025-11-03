// login_page.js

document.getElementById("loginBtn").addEventListener("click", function () {
  const email = document.getElementById("email").value.trim();
  const password = document.getElementById("password").value.trim();

  if (email === "" || password === "") {
    alert("Please enter both email and password.");
    return;
  }

  // Example check (you can replace this logic)
  if (email === "akshay2005@gmail.com" && password === "12345") {
    alert("Login successful!");
    window.open("Main_website.html", "_blank");
  } else {
    alert("Invalid email or password!");
  }
});
