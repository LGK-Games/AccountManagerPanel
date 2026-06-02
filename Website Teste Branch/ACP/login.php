<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
  <!-- main Css-->
  <link href="login.css" rel="stylesheet" />
</head>
<body>
    <div class="box">
      <div class="form">
    <h2>Login</h2>
    <form action="login_process.php" method="post">
        <div class="inputBox">
        <input type="text" id="username" name="username" required>
                  <span>Username</span>
                  <i></i>
        </div>
                <div class="inputBox">
       <input type="password" id="password" name="password" required>
        <span>Password</span>
        <i></i>
        </div>
        <br>
        <div>
        <input type="submit" value="Login" />
        </div>
    </form>
    <br>
          <div class="links">
          <a href="recovery_password.php">Password recovery</a>
        </div>
    </div>
        </div>
</body>
</html>
