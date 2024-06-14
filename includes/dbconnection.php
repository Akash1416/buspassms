<?php
// DB credentials.
define('DB_SERVER', 'buspass.database.windows.net');
define('DB_DATABASE', 'buspass');
define('DB_USER', 'azureuser');
define('DB_PASS', 'Azure@123456');

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
