<?php
session_start();


$host="localhost";
$dbuser="root";
$dbpassword="";
$db="shop";

$con= mysqli_connect($host,$dbuser,$dbpassword);
mysqli_set_charset($con,'utf8');
mysqli_select_db($con,$db);


if(isset($_POST["registerBtn"]))
{
    
    
    $email=$_POST["email"];
    $password=$_POST["password"];
    $Confirm=$_POST["Confirm"];
    $name=$_POST["name"];
    if($password==$Confirm)
    {
        $sqlInsert="insert into user (email,password,name,type) values('".$email."','".$password."','".$name."','user')";
        $resultInsert=mysqli_query($con,$sqlInsert);
        if($resultInsert)
        {
            
            echo "<script type='text/javascript'>alert('Register Was Successful ');
            window.location.replace('login.php');
            </script>";
        }
    }
    else
    {
        echo "<script type='text/javascript'>alert('password fields not match');</script>";
    }   

   
}
?>

<!DOCTYPE html>
<html >
    <head>
        <title>Register</title>
        
    </head>
    <body  style="background:rgb(255,204,204);background-size: 100% 100vh;align-content: center;">
        <div style="margin-left:auto;margin-right:auto;margin-top:7%; width:70%; text-align: center;background:rgba(255,255,255,.8);border-radius: 20px;display:flex;">
            <div style="width:50%;">
                <h1 style="padding-top:60px;margin-bottom:60px;color:rgb(33,32,41)"> Register</h1>
                
                <form method="POST" >
                
                    <div style="margin-bottom:10px;">
                    
                    <input style="font-size:20px; border-radius: 5px; border:1px solid #B7B7B7;padding:5px" type="email" name="email" placeholder="Email" required> 
                    </div>
                    <div style="margin-bottom:10px;">
                        
                        <input style="font-size:20px; border-radius: 5px; border:1px solid #B7B7B7;padding:5px"  type="Password" name="password" placeholder="Password" required>
                    </div>
                    <div style="margin-bottom:10px;">
                        
                        <input style="font-size:20px; border-radius: 5px; border:1px solid #B7B7B7;padding:5px" type="Password" name="Confirm" placeholder="Confirm Password" required>
                    </div>
                    

                    <div style="margin-bottom:40px;">
                        
                        <input style="font-size:20px; border-radius: 5px; border:1px solid #B7B7B7;padding:5px" type="text" name="name" placeholder=" Name" required>
                    </div>
                    
                    <button style="font-size:25px;border-radius: 5px;background-color: rgb(9,8,102);color:rgb(189,207,221);border:none;padding:10px;margin-bottom:60px;width:50%;" type="submit" name="registerBtn">Register</button>
                </form>
            </div>
            <div style="width:50%;" >
                <img src="images/img2.jpg" style="width:100%;height:100%;border-radius:0 20px 20px 0" />

            </div>
        
         
        </div>
        
        
        
    </body>
</html>