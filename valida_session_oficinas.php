<?php
ob_start();
@session_start();

if (!isset($_SESSION['cod'])) {
    unset($_SESSION['cod']);
    session_destroy();    
    header('Location: oficinas.php');
} else {
    $cod = $_SESSION['cod'];
}
?>