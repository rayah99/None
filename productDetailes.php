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

if(isset($_POST["BuyBtn"]))
{
    header("location:OrderSuccess.php");
}


$sqlSelect="select * from product where id=".$_GET["product_id"];

    $resultSelect=mysqli_query($con,$sqlSelect);
    $row=mysqli_fetch_assoc($resultSelect);

    $sqlSelectImages="select * from productimages where product_id=".$_GET["product_id"];
    $resultSelectImages=mysqli_query($con,$sqlSelectImages);

    if(mysqli_num_rows($resultSelectImages)>0)
    {
        $images=array();
        $i=0;
        echo "<script type='text/javascript'>const ss=[];</script>";
        while($row2=mysqli_fetch_assoc($resultSelectImages))
        {
            $images[$i]=$row2["url"];
            echo "<script type='text/javascript'>ss[".$i."]='".$row2["url"]."';</script>";
            $i++;
            
        }
       
    }
   

?>

<!DOCTYPE html>
<html >
    <head>
        <title>productDetailes</title>
        <script >
            var j=0;
            function next()
            {
                if(j<ss.length-1)
                {
                    j++;
                    document.getElementById('P_Image').src='images/products/'+ss[j];
                    
                }
    
            }

            function pre()
            {
                if(j>0)
                {
                    j--;
                    
                    document.getElementById('P_Image').src='images/products/'+ss[j];
                    
                }
    
            }
        </script>
    </head>
    <body  style="align-content: center;margin:0;background:rgb(255,255,255)" >
    <?php include "header.php" ?>
        <div style="margin-left:auto; margin-right:auto; margin-top:4%; width:60%;text-align: center;border-radius: 20px;margin-bottom:40px;width:100%">
            
               

                <form method="POST" style="display:flex;width:65%;margin-right:auto;margin-left:auto;text-align: center">.
                    <img src="images/left-arrow.png" style="width:60px;height:60px;margin-top:auto;margin-bottom:auto;margin-right:10px" onclick="next();"/>
                    <Img id="P_Image" src="images/products/<?php echo $row["image"] ?>" style="width:500px;height:600px;"/>
                    <img src="images/arrow-right.png" style="width:60px;height:60px;margin-top:auto;margin-bottom:auto;margin-left:10px" onclick="pre();"/>
                    <div style="width:35%;padding-left:5%;padding-right:5%;text-align:left">
                        <h2 style="margin:0;margin-top:50px"><?php echo $row["title"] ?></h2>
                        <h4><?php echo $row["price"] ?> SR</h4>
                        <p style="font-size:18px;margin-top:50px"><?php echo $row["description"] ?></p>
                         <div><input style="font-size:20px;border-radius: 5px;border:1px solid #B7B7B7;padding:5px;margin-bottom: 20px;margin-left: 0px;margin-right: auto;width:50%"  type="number" name="quantity" placeholder="Quantity" required></div>
                         <button style="font-size:22px;border-radius: 5px;background-color: rgb(9,8,102);color:rgb(189,207,221);border:none;padding:5px;padding-left: 10px;padding-right: 10px;margin-left: auto;cursor: pointer;margin-bottom: 20px;width:50%" type="submit" name="BuyBtn">Buy Now</button>
                    </div>
              
                </form>
         
        </div>
        
        
        <?php include "footer.php" ?>
    </body>
</html>