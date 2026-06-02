<?php
include('../config.php');

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $username = mysqli_real_escape_string($conn, $_POST['username']);
    $email = mysqli_real_escape_string($conn, $_POST['email']);
    $password = mysqli_real_escape_string($conn, $_POST['password']);

    // Hash da senha
    $hashed_password = password_hash($password, PASSWORD_DEFAULT);

    // Verifica se o usuário ou email já existe
    $check_query = $conn->prepare("SELECT * FROM users WHERE username=? OR email=?");
    $check_query->bind_param("ss", $username, $email);
    $check_query->execute();
    $check_result = $check_query->get_result();

    if ($check_result->num_rows > 0) {
        $error_message = "<p style='color:red;'>Invalid username or password.</p>";
    } else {
        // Insere o novo usuário no banco de dados
        $insert_query = $conn->prepare("INSERT INTO users (username, email, password) VALUES (?, ?, ?)");
        $insert_query->bind_param("sss", $username, $email, $hashed_password);
        
        if ($insert_query->execute()) {
          header("location: login.php");
        } else {
            echo "Error: " . $insert_query->error;
        }

        $insert_query->close();
    }

    $check_query->close();
}

$conn->close();
?>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>Login Template</title>
  <link href="https://fonts.googleapis.com/css?family=Karla:400,700&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="https://cdn.materialdesignicons.com/4.8.95/css/materialdesignicons.min.css">
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
  <link rel="stylesheet" href="assets/css/login.css">
</head>
<body>
  <main class="d-flex align-items-center min-vh-100 py-3 py-md-0">
    <div class="container">
      <div class="card login-card">
        <div class="row no-gutters">
          <div class="col-md-5">
            <img src="assets/images/login.jpg" alt="login" class="login-card-img">
          </div>
          <div class="col-md-7">
            <div class="card-body">
              <div class="brand-wrapper">
                <img src="assets/images/logo.svg" alt="logo" class="logo">
              </div>
              <h2 class="login-card-description">Sign up</h2>
   <?php if (!empty($error_message)) : ?>
        <p><?php echo $error_message; ?></p>
    <?php endif; ?>
              <form action="register_process.php" method="POST">
                  <div class="form-group">
                    <label for="username" class="sr-only">Username</label>
                    <input type="username" name="username" id="username" class="form-control" placeholder="Username">
                  </div>
                  <div class="form-group">
                    <label for="email" class="sr-only">Username</label>
                    <input type="email" name="email" id="email" class="form-control" placeholder="Email Adress">
                  </div>
                  <div class="form-group mb-4">
                    <label for="password" class="sr-only">Password</label>
                    <input type="password" name="password" id="password" class="form-control" placeholder="***********">
                  </div>
                  <input name="register" id="register" class="btn btn-block login-btn mb-4" type="submit" value="Register">
                </form>
                <p class="login-card-footer-text">Do you have an account? <a href="login.php" class="text-reset">Login here</a></p>
            </div>
          </div>
        </div>
      </div>
    </div>
  </main>
  <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
</body>
</html>

