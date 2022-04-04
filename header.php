<?php




?>

<!DOCTYPE html>
<html >
    <head>
        <title>Register</title>
        
    </head>
    <body style="margin:0;">
        <div style="width: 100%;height: 100px;background-color: rgb(255,204,204);display: flex;">
            <div style=" margin-top: auto;margin-bottom: auto;margin-left: 150px;">
                <p style=" font-size: 35px;color: black; margin-left: 50px;margin-top: auto;margin-bottom: auto;letter-spacing: 10px;">Lenda Store</P></div>
            <div style="margin-top: auto; margin-bottom: auto; margin-left:auto; margin-right: 150px;">
                           <ul style=" list-style: none;">
                    <?php if(isset($_SESSION['user_rule']))
                        {
                            if($_SESSION['user_rule']=="admin")
                            {
                   ?>
                                <li style="float: left; margin-left: 50px;"><a style="text-decoration: none; color: black;padding: 5px;font-size: 20px;" href="home.php">Home</a></li>
                                <li style="float: left; margin-left: 50px;"><a style="text-decoration: none; color: black;padding: 5px;font-size: 20px;" href="products.php">Products</a></li>
                                <li style="float: left; margin-left: 50px;"><a style="text-decoration: none; color: black;padding: 5px;font-size: 20px;" href="#">Orders</a></li>
                                <li style="float: left; margin-left: 50px;"><a style="text-decoration: none; color: black;padding: 5px;font-size: 20px;" href="logout.php">Logout</a></li>
                    <?php 
                            }else
                            {
                    ?>
                                <li style="float: left; margin-left: 50px;"><a style="text-decoration: none; color: black;padding: 5px;font-size: 20px;" href="home.php">Home</a></li>
                                <li style="float: left; margin-left: 50px;"><a style="text-decoration: none; color: black;padding: 5px;font-size: 20px;" href="shop.php">Shop</a></li>
                                
                                <li style="float: left; margin-left: 50px;"><a style="text-decoration: none; color: black;padding: 5px;font-size: 20px;" href="logout.php">Logout</a></li>
                    <?php 
                            }
                     
                    ?>
                    <?php 
                        }else
                        {
                    ?>
                            <li style="float: left; margin-left: 50px;"><a style="text-decoration: none; color: black;padding: 5px;font-size: 20px;" href="home.php">Home</a></li>
                            <li style="float: left; margin-left: 50px;"><a style="text-decoration: none; color: black;padding: 5px;font-size: 20px;" href="shop.php">Shop</a></li>
                            
                            <li style="float: left; margin-left: 50px;"><a style="text-decoration: none; color: black;padding: 5px;font-size: 20px;" href="login.php">Login</a></li>
                    <?php

                        }
                    ?>
                    <?php
                       

                       
                    ?>
                    
                   
                </ul>
            </div>
                
        </div>
       
        
        
        
    </body>
</html>