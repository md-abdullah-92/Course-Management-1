<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registration</title>
    <!-- Font Icon -->
    <link rel="stylesheet" href="fonts/material-icon/css/material-design-iconic-font.min.css">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            /* Set background image */
            background-image: url('login1.jpg');
            background-size: cover; /* Cover the entire viewport */
            background-repeat: no-repeat; /* Do not repeat the image */
            display: flex;
            justify-content: center; /* Center horizontally */
            align-items: center; /* Center vertically */
            height: 100vh; /* Set the height of the body to full viewport height */
        }
        .container {
            width: 30%;
            background-color: rgba(255, 255, 255, 0.6); /* Add transparency */
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.2);
        }
        .error-message {
            color: red;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2 class="text-center">Registration</h2>
        <form action="RegistrationServlet" class="text-center" method="post" onsubmit="return validateForm()">
            <div class="form-group">
                <label for="name"><i class="zmdi zmdi-account material-icons-name"></i> Your Name:</label>
                <input type="text" name="name" id="name" class="form-control" placeholder="Your Name" required>
            </div>
            <div class="form-group">
                <label for="email"><i class="zmdi zmdi-email"></i> Email:</label>
                <input type="email" name="email" id="email" class="form-control" placeholder="Your Email" required>
            </div>
            <div class="form-group">
                <label for="username"><i class="zmdi zmdi-account"></i> Username:</label>
                <input type="text" name="username" id="username" class="form-control" placeholder="Username" required>
            </div>
            <div class="form-group">
                <label for="pass"><i class="zmdi zmdi-lock"></i> Password:</label>
                <input type="password" name="pass" id="pass" class="form-control" placeholder="Password" required>
            </div>
            <div class="form-group">
                <label for="re-pass"><i class="zmdi zmdi-lock-outline"></i> Repeat Password:</label>
                <input type="password" name="re_pass" id="re_pass" class="form-control" placeholder="Repeat your password" required>
                <div id="password-mismatch" class="error-message"></div>
            </div>
            <div class="form-group">
                <label for="contact"><i class="zmdi zmdi-phone"></i> Contact No:</label>
                <input type="text" name="contact" id="contact" class="form-control" placeholder="Contact no" required>
                <div id="invalid-contact" class="error-message"></div>
            </div>
            <div class="form-group" style="margin-bottom: 10px;">
                <label for="usertype">User Type:</label>
                <select class="form-control" id="usertype" name="usertype" required>
                    <option value="not null">Select User Type</option>
                    <option value="student">Student</option>
                    <option value="teacher">Teacher</option>
                    <option value="admin">Admin</option>
                </select>
            </div>
            <button type="submit" style="width: 100%; margin-top: 10px; font-size:1.1em;" class="btn btn-primary btn-lg btn-block"><b>Register</b></button>
        </form>
        <p class="text-center" style="margin-top: 10px;">Already have an account? <a href="index.jsp">Login here</a>.</p>
    </div>
    <script>
        function validateForm() {
            var password = document.getElementById("pass").value;
            var confirmPassword = document.getElementById("re_pass").value;
            var contact = document.getElementById("contact").value;
            var errorDivPassword = document.getElementById("password-mismatch");
            var errorDivContact = document.getElementById("invalid-contact");

            if (password !== confirmPassword) {
                errorDivPassword.innerHTML = "Passwords do not match. Please make sure your passwords match.";
                return false;
            } else {
                errorDivPassword.innerHTML = "";
            }

            var contactPattern = /^\d{10}$/; // Regular expression for a 10-digit number
            if (!contactPattern.test(contact)) {
                errorDivContact.innerHTML = "Invalid contact number. Please enter a 10-digit number.";
                return false;
            } else {
                errorDivContact.innerHTML = "";
            }

            return true;
        }
    </script>
</body>
</html>
