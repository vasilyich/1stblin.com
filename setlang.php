<?php
// code which handles setting of the language switch global variable
session_start();

// storing language preference of the user in session variable, use "ru" as default if nothing is selected
if ( isset($_GET['lang']) ) {
    $_SESSION['lang'] = $_GET['lang'];
} else {
    if ( !isset($_SESSION['lang']) ) {
        $_SESSION['lang'] = 'ru';
    }
}
?>