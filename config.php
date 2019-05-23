<?php

/****
    * Configuration file for database connection
    *
    */

$host = "localhost";
$username = "root";
$password = "EYvCG6sWTeVnrv0z";
$dbname = "SSAC";
$dsn = "mysql:host=$host;dbname=$dbname";
$options = array(
            PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION
);