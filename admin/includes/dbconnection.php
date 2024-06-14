<?php
// DB credentials.
define('DB_SERVER', 'your_server.database.windows.net');
define('DB_DATABASE', 'your_database');
define('DB_USER', 'your_username');
define('DB_PASS', 'your_password');

// Establish database connection.
try
{
    $dbh = new PDO("sqlsrv:server=" . DB_SERVER . ";Database=" . DB_DATABASE, DB_USER, DB_PASS);
    // Set the PDO error mode to exception
    $dbh->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    echo "Connected successfully";
}
catch (PDOException $e)
{
    exit("Error: " . $e->getMessage());
}
?>
