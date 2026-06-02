<?php
session_start();
require_once "db_connect.php";

// Tempo limite para sessões (em segundos)
$session_timeout = 3600; // 1 hora

// Consulta para excluir sessões expiradas
$sql = "DELETE FROM sessions WHERE last_activity < (NOW() - INTERVAL $session_timeout SECOND)";
$conn->query($sql);
?>
