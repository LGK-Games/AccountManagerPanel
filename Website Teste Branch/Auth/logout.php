<?php
session_start();

// Unset all session variables
session_unset();

// Limpa todas as variáveis de sessão
$_SESSION = array();

// Destroi a sessão
session_destroy();
// Fecha a conexão MySQLi
include('../config.php');
$conn->close();

// Redireciona o usuário para a página de login
header("location: ../index.php");
exit;

?>
