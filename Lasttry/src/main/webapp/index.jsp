<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>SUST</title>
<!-- Bootstrap CSS -->
<link href="css/bootstrap.css" rel="stylesheet">
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
        width: 25%;
        background-color: rgba(255, 255, 255, 0.6); /* Add transparency */
        padding: 20px;
        border-radius: 10px;
        box-shadow: 0 2px 4px rgba(0, 0, 0, 0.2);
    }
</style>
</head>
<body>
<div class="container">
    <h2 class="text-center">LOGIN</h2>
    <form action="JSPServlet" class="text-center">
        <div class="form-group">
            <label for="username">Username:</label>
            <input type="text" class="form-control" id="username" name="username" placeholder="Enter Username" required>
        </div>
        <div class="form-group">
            <label for="password">Password:</label>
            <input type="password" class="form-control" id="password" name="password" placeholder="Enter Password" required>
        </div>
        <div class="form-group" style="margin-bottom: 10px;">
            <label for="userType">User Type:</label>
            <select class="form-control" id="userType" name="userType" required>
                <option value="">Select User Type</option>
                <option value="student">Student</option>
                <option value="teacher">Teacher</option>
                <option value="admin">Admin</option>
            </select>
        </div>
        <button type="submit" style="width: 100%; font-size:1.1em;" class="btn btn-success btn-lg btn-block"><b>Login</b></button>
    </form>
    <p class="text-center" style="margin-top: 10px;">Don't have an account? <a href="registration.jsp">Register here</a>.</p>
</div>
</body>
</html>
