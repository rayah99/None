<?php
session_start();


$host="localhost";
$dbuser="root";
$dbpassword="";
$db="shop";

$con= mysqli_connect($host,$dbuser,$dbpassword);
mysqli_set_charset($con,'utf8');
mysqli_select_db($con,$db);

if(isset($_POST["LoginBtn"]))
{
    //collect login data
    
    $email=$_POST["email"];
    $password=$_POST["password"];
    
    // sql commend to select specific user from database
    $sqlSelect="select * from user where email='".$email ."' and password = '".$password."'limit 1" ;
    $resultSelect=mysqli_query($con,$sqlSelect);
    //check if user info is true
    if (mysqli_num_rows($resultSelect)==1)
    {
        // make new SESSION for user_id and rule
        $row = mysqli_fetch_assoc($resultSelect);
        $_SESSION['user_id']=$row["id"];
        $_SESSION['user_rule']=$row["type"];
       
        if($row["type"]=="user")
        {
            header("location:shop.php");
        }else if($row["type"]=="admin")
        {
            header("location:products.php");
        }
           
        
      
       
		
    }
    else
    {// if user info is ronge show alert message
        echo "<script type='text/javascript'>alert('Invalid Email or Password');</script>";
    }

   
}


if(isset($_POST["RegisterBtn"]))
{
    header("location:register.php");
}
?>

<!DOCTYPE html>
<html >
    <head>
        <title>Login</title>
        
    </head>
    <body  style="background:rgb(255,204,204);background-size: 100% 100vh;align-content: center;">
        <div style="margin-left:auto;margin-right:auto;margin-top:7%; width:70%; text-align: center;background:rgba(255,255,255,.8);border-radius: 20px;display:flex;height:498px">
            <div style="width:50%;">
                <h1 style="padding-top:60px;margin-bottom:60px;color:rgb(33,32,41)"> Login</h1>
                
                <form method="POST" >
                
                    <div style="margin-bottom:10px;">
                    
                    <input style="font-size:20px; border-radius: 5px; border:1px solid #B7B7B7;padding:5px" type="email" name="email" placeholder="Email" required> 
                    </div>
                    <div style="margin-bottom:40px;">
                        
                        <input style="font-size:20px; border-radius: 5px; border:1px solid #B7B7B7;padding:5px"  type="Password" name="password" placeholder="Password" required>
                    </div>
                   
                    
                    <button style="font-size:25px;border-radius: 5px;background-color: rgb(9,8,102);color:rgb(189,207,221);border:none;padding:10px;;width:50%;" type="submit" name="LoginBtn">Login</button>
                    <P style="margin-bottom:60px;color:#747171;">Don't have an account yet? <a style="color:#747171;" href="register.php">Sign up</a></p>
                </form>
            </div>
            <div style="width:50%;" >
                <img src="images/img2.jpg" style="width:100%;height:100%;border-radius:0 20px 20px 0" />

            </div>
        
         
        </div>
        
        
        
    </body>
</html>