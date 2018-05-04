<?php
function startup()
{
	
	$hostname = 'localhost';
	$username = 'a0181256_admin';
	$password = 'Alex333';
	$dbName   = 'a0181256_mymusic';
	
//	setlocale(LC_ALL, 'ru_RU.CP1251');
	
	mysql_connect($hostname, $username, $password) or die('No connect with database!');
//	mysql_query('SET NAMES cp1251');
	mysql_select_db($dbName) or die('No database');
}
?>