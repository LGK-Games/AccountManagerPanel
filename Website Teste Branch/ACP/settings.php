<?php
session_start();
if(!isset($_SESSION['username'])){
    header("location: ../index.php");
    exit();
}
include('../config.php');

    
$username = $_SESSION['username'];
// Processar a atualização do email
if(isset($_POST['update_email'])) {
    if(isset($_POST['new_email'])) {
        $new_email = mysqli_real_escape_string($conn, $_POST['new_email']);
        $update_query = $conn->prepare("UPDATE users SET email = ? WHERE username = ?");
        $update_query->bind_param("ss", $new_email, $username);
        if($update_query->execute()) {
            echo "Email updated successfully";
        } else {
            echo "Error updating email: " . $update_query->error;
        }
    } else {
        echo "No email provided.";
    }
}

// Processar a atualização da senha
if(isset($_POST['update_password'])) {
    if(isset($_POST['old_password']) && isset($_POST['new_password']) && isset($_POST['confirm_new_password'])) {
        $old_password = $_POST['old_password'];
        $new_password = $_POST['new_password'];
        $confirm_new_password = $_POST['confirm_new_password'];

        // Verificar se a senha antiga está correta
        $query = $conn->prepare("SELECT password FROM users WHERE username = ?");
        $query->bind_param("s", $username);
        $query->execute();
        $result = $query->get_result();
        $row = $result->fetch_assoc();
        if(password_verify($old_password, $row['password'])) {
            // Verificar se a nova senha e a confirmação coincidem
            if($new_password === $confirm_new_password) {
                $hashed_password = password_hash($new_password, PASSWORD_DEFAULT);
                $update_query = $conn->prepare("UPDATE users SET password = ? WHERE username = ?");
                $update_query->bind_param("ss", $hashed_password, $username);
                if($update_query->execute()) {
                    echo "Password updated successfully";
                } else {
                    echo "Error updating password: " . $update_query->error;
                }
            } else {
                echo "New password and confirmation do not match";
            }
        } else {
            echo "Incorrect old password";
        }
    } else {
        echo "All fields are required for password update";
    }
    $query->close();
}

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
                    <a class="nav-link" href="../news/news_list.php">News List</a>
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
    <div>
      <h2>Settigs</h2>
    </div>
        <form action="" method="post">
            <label for="new_email">New Email:</label><br>
            <input type="email" id="new_email" name="new_email"><br><br>
            <input type="submit" class="btn btn-primary" value="Update Email" name="update_email"><br><br>
        </form>
        <h3>Change Password</h3>
        <form action="" method="post">
            <label for="old_password">Old Password:</label><br>
            <input type="password" id="old_password" name="old_password"><br><br>
            <label for="new_password">New Password:</label><br>
            <input type="password" id="new_password" name="new_password"><br><br>
            <label for="confirm_new_password">Confirm New Password:</label><br>
            <input type="password" id="confirm_new_password" name="confirm_new_password"><br><br>
            <input type="submit" class="btn btn-primary" value="Update Password" name="update_password"><br><br>
        </form>

</div>
        <!-- Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
