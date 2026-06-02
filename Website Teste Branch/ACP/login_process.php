<?php
session_start();
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    include('../config.php');

    $username = mysqli_real_escape_string($conn, $_POST['username']);
    $password = mysqli_real_escape_string($conn, $_POST['password']);

    // Verifica se o usuário existe
    $query = $conn->prepare("SELECT * FROM users WHERE username=? OR email=?");
    $query->bind_param("ss", $username, $username);
    $query->execute();
    $result = $query->get_result();

    if ($result->num_rows == 1) {
        $row = $result->fetch_assoc();
        // Verifica a senha
        if (password_verify($password, $row['password'])) {
            $_SESSION['username'] = $row['username'];
            $_SESSION['acess_level'] = $row['acess_level'];
            $_SESSION['last_login'] = $row['last_login'];

            // Atualiza data de último login e IP
            $now = date("Y-m-d H:i:s");
            $update_sql = "UPDATE users SET last_login = '$now' WHERE username = '$username'";
            $conn->query($update_sql);
            header("location: dashboard.php");
            exit();
        } else {
            echo  "<p style='color:red;'>Invalid username or password.</p>";
        }
    } else {
        echo  "<p style='color:red;'>Invalid username or password.</p>";
    }
    $query->close();
    $conn->close();
}
?>
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
