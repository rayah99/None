<?php
session_start();


$host="localhost";
$dbuser="root";
$dbpassword="";
$db="shop";

$con= mysqli_connect($host,$dbuser,$dbpassword);
mysqli_set_charset($con,'utf8');
mysqli_select_db($con,$db);
if(!isset($_SESSION["user_rule"]))
{
    header("location:login.php");
}



if(isset($_GET["ShopBtn"]))
{
    header("location:shop.php");
}


?>

<!DOCTYPE html>
<html >
    <head>
        <title>Home</title>
        
    </head>
    <body  style="align-content: center;margin:0;background:rgb(230,227,230)" >
    <?php include "header.php" ?>
        <div style="height:60vh;text-align: center;width:100%;background-image: url('images/hbg.jpg');;background-size:100% 100%;padding-top:150px">
            <form style="background-color:rgba(255,255,255,.5);width:50%;margin-left:auto; margin-right:auto;text-align: center;height:200px;padding-top:50px">
                <h1 style="font-size:35px;font-weight:bold;letter-spacing: 10px;">Lenda Store</h1>
                <button style="font-size:22px;background-color: rgb(9,8,102);color:rgb(189,207,221);border:none;padding:5px;padding-left: 10px;padding-right: 10px;margin-left: auto;cursor: pointer;margin-top:10px;" type="submit" name="ShopBtn">Shop Now</button>
            </form>    
               

               
         
        </div>
        
        
        <?php include "footer.php" ?>
    </body>
</html>