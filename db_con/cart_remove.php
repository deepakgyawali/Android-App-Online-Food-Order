<?php
//open connection to mysql db
$connection = mysqli_connect("localhost","deepakgy_87442","P@ssw0rD","deepakgy_android") or die("Error " . mysqli_error($connection));

//fetch table rows from mysql db
$pid = $_POST['pid'];

$sql = "SELECT * FROM FoodCart WHERE id='$pid'";
$result = mysqli_query($connection, $sql);
$num_rows = mysqli_num_rows($result);

if($num_rows!==0){

    $sql = "DELETE FROM FoodCart WHERE id='$pid'";
    $result = mysqli_query($connection, $sql) or die("Error in Selecting " . mysqli_error($connection));

    echo "success";
    exit;

}
//close the db connection
mysqli_close($connection);
?>