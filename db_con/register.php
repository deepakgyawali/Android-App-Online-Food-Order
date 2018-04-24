<?php
//open connection to mysql db
$connection = mysqli_connect("localhost","deepakgy_87442","P@ssw0rD","deepakgy_android") or die("Error " . mysqli_error($connection));

//fetch table rows from mysql db
$fName = $_POST['fName'];
$lName = $_POST['lName'];
$pNumber = $_POST['pNumber'];
$username = $_POST['username'];
$password = $_POST['password'];
$email = $_POST['email'];

$sql = "SELECT * FROM Users WHERE username='$username'";
$result = mysqli_query($connection, $sql);
$num_rows = mysqli_num_rows($result);

if($num_rows!==0){
    echo "failed";
    exit;
} else {

    $sql = "INSERT INTO Users (fName, lName, pNumber, username, password, email)
    VALUES ('$fName', '$lName', '$pNumber', '$username', '$password', '$email')";

    $result = mysqli_query($connection, $sql) or die("Error in Selecting " . mysqli_error($connection));

    echo "success";
}
//close the db connection
mysqli_close($connection);
?>