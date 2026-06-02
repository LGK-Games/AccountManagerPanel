<?php if (isset($_SESSION['LAST_ACTIVITY']) && (time() - $_SESSION['LAST_ACTIVITY'] > 3600)) {
    // Se a última atividade foi há mais de 1 hora atrás, destrua a sessão
    session_unset();     // Limpa as variáveis de sessão
    session_destroy();   // Destrói a sessão
    header("Location: login.php"); // Redireciona para a página de login
    exit();
}

$_SESSION['LAST_ACTIVITY'] = time(); // Atualiza o tempo da última atividade
?>