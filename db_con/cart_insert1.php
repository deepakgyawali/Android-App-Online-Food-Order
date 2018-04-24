<?php
//open connection to mysql db
$connection = mysqli_connect("localhost","deepakgy_87442","P@ssw0rD","deepakgy_android") or die("Error " . mysqli_error($connection));

//fetch table rows from mysql db
$txtName = $_POST['txtName'];
$txtDesc = $_POST['txtDesc'];
$txtQty = $_POST['txtQty'];
$txtPrice = $_POST['txtPrice'];
$txtImageUrl = $_POST['txtImageUrl'];
$txtCustomer = $_POST['txtCustomer'];

$sql = "INSERT INTO cart (ProductName, Description, Qty, Price, IMG_URL, Customer)
    VALUES ('$txtName', '$txtDesc', '$txtQty', '$txtPrice', '$txtImageUrl', '$txtCustomer')";
$result = mysqli_query($connection, $sql) or die("Error in Selecting " . mysqli_error($connection));
if($result)
{echo "success";}else{echo "Error";}


//close the db connection
mysqli_close($connection);
?>