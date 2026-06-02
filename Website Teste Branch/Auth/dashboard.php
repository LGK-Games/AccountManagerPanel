<?php
session_start();
if(!isset($_SESSION['username'])){
    header("location: login.php");
    exit();
}
require_once('../config.php');

$username = $_SESSION['username'];

// Obter informações do usuário
$query = $conn->prepare("SELECT * FROM users WHERE username=?");
$query->bind_param("s", $username);
$query->execute();
$result = $query->get_result();
$row = $result->fetch_assoc();

    $query->close();
    $conn->close();
?>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dashboard</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
  <div>
  <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <a class="navbar-brand" href="#">Dashboard</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav">
                <li class="nav-item active">
                    <a class="nav-link" href="dashboard.php">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="profile.php">Profile</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="settings.php">Settings</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="logout.php">Logout</a>
                </li>
            </ul>
          </nav>
          </div>

    <div>
    <div class="container mt-4">
      <h2>Welcome, <?php echo $username; ?></h2>
    </div>
    <br>
    <div class="container mt-4">      <p><strong>Email:</strong> <?php echo $row['email']; ?></p>
        <p><strong>Created At:</strong> <?php echo $row['created_at']; ?></p>
        <p><strong>Last Login:</strong> <?php echo $row['last_login']; ?></p>
        <p><strong>Last IP:</strong> <?php echo $row['last_ip']; ?></p>
    </div>
    <!-- Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
