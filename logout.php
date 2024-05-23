<?php
session_start();
if (isset($_SESSION['account_loggedin'])) {
    unset($_SESSION['account_loggedin']);
    unset($_SESSION['account_id']);
    unset($_SESSION['account_admin']);
}
header('Location: index.php');
?>
