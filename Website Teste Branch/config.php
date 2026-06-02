<?php
// Impede o acesso direto ao arquivo config.php
if (basename($_SERVER['SCRIPT_FILENAME']) == 'config.php') {
    die('Acesso não permitido');
}

// Configurações do banco de dados
$host = "localhost";
$user = "root";
$password = "";
$database = "Testex11";

// Conexão com o banco de dados
$conn = new mysqli($host, $user, $password, $database);

// Verifica a conexão
if ($conn->connect_error) {
    die("Falha na conexão: " . $conn->connect_error);
}

// Escapa caracteres especiais para evitar injeção de SQL
function escape($conn, $string) {
    return $conn->real_escape_string($string);
}
?>
