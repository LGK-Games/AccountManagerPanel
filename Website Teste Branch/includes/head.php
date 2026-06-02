<?php
if (basename($_SERVER['SCRIPT_FILENAME']) == 'head.php') {
    die('Acesso direto não permitido');
}
?>

<!-- meta include -->
<?php include('meta.php'); ?>
  <!-- css include -->
<?php include('css.php'); ?>
 <!-- scripts include -->
<?php include('scripts.php'); ?>
 <!-- <style></style> tags include -->
<?php include('style.php'); ?>