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

$sql = "SELECT * FROM cart WHERE ProductName='$txtName'";
$result = mysqli_query($connection, $sql);
$num_rows = mysqli_num_rows($result);

if($num_rows!==0){

    while ($row = mysqli_fetch_array($result)) {
        $Qty = $row['Qty'];
        $Price = $row['Price'];
    }

    $updatetxtQty=$Qty+1;
    $updatetxtPrice=$Price*2;

    $sql = "UPDATE cart SET Qty='$updatetxtQty', Price= '$updatetxtPrice' WHERE ProductName='$txtName'";
    $result = mysqli_query($connection, $sql) or die("Error in Selecting " . mysqli_error($connection));

    echo "success";
    exit;

} else {

    $sql = "INSERT INTO cart (ProductName, Description, Qty, Price, IMG_URL, Customer)
    VALUES ('$txtName', '$txtDesc', '$txtQty', '$txtPrice', '$txtImageUrl', '$txtCustomer')";

    $result = mysqli_query($connection, $sql) or die("Error in Selecting " . mysqli_error($connection));

    echo "success";
}
//close the db connection
mysqli_close($connection);
?>