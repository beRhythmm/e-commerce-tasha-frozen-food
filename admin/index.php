<?php
define('admin', true);
session_start();
// Include the configuration file, this contains settings you can change.
include '../config.php';
// Include functions and connect to the database using PDO MySQL
include '../functions.php';
// Connect to MySQL database
$pdo = pdo_connect_mysql();
// If the user is not logged-in redirect them to the login page
if (!isset($_SESSION['account_loggedin'])) {
    header('Location: ../index.php?page=myaccount');
    exit;
}
// If the user is not admin redirect them back to the shopping cart home page
$stmt = $pdo->prepare('SELECT * FROM accounts WHERE id = ?');
$stmt->execute([ $_SESSION['account_id'] ]);
$account = $stmt->fetch(PDO::FETCH_ASSOC);
if (!$account || $account['admin'] != 1) {
    header('Location: ../index.php');
    exit;
}
// Page is set to home (home.php) by default, so when the visitor visits that will be the page they see.
$page = isset($_GET['page']) && file_exists($_GET['page'] . '.php') ? $_GET['page'] : 'orders';
if (isset($_GET['page']) && $_GET['page'] == 'logout') {
    session_destroy();
    header('Location: ../index.php');
    exit;
}
// Output error variable
$error = '';
// Include the requested page
include $page . '.php';
?>
