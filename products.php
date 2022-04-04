<?php
session_start();


$host="localhost";
$dbuser="root";
$dbpassword="";
$db="shop";

$con= mysqli_connect($host,$dbuser,$dbpassword);
mysqli_set_charset($con,'utf8');
mysqli_select_db($con,$db);
if(!isset($_SESSION["user_rule"]) || $_SESSION["user_rule"]=="user")
{
    header("location:login.php");
}

if(isset($_POST["AddBtn"]))
{
    
    
    $title=$_POST["title"];
    $price=$_POST["price"];
    $description=$_POST["description"];
    $comBirthdate=isset($_POST['comBirthdate']) ? 1 : 0;
    $comWedding=isset($_POST['comWedding']) ? 1 : 0;
    $comTravelBooking=isset($_POST['comTravelBooking']) ? 1 : 0;
    $comDietStart=isset($_POST['comDietStart']) ? 1 : 0;
    $comCottonAllergy=isset($_POST['comCottonAllergy']) ? 1 : 0;
    $comHandicapped=isset($_POST['comHandicapped']) ? 1 : 0;
    $comPregnant=isset($_POST['comPregnant']) ? 1 : 0;
    $age=$_POST["age"];
    $size=$_POST["size"];
    $height=$_POST["height"];
    $event;
    if(!$comTravelBooking && !$comTravelBooking && !$comTravelBooking && !$comTravelBooking)
    {
        $event=0;
    }
    else
    {
        $event=1;
    }
    
    $file_name = $_FILES['image']['name'][0];
    $file_temp_name=$_FILES['image']['tmp_name'][0];
    $file_ext_temp=explode('.',$file_name);
    $file_ext= end($file_ext_temp);
    $file_new_name=uniqid('',true).".".$file_ext;
    $file_destinations="images/products/".$file_new_name;
    move_uploaded_file($file_temp_name,$file_destinations);
    
    
    

    $sqlInsert="insert into product (title,price,description,image,comBirthdate,comWedding,comTravelBooking,comDietStart,comCottonAllergy,comHandicapped,comPregnant,age,size,height,event) values
                (\"".$title."\",".$price.",\"".$description."\",'".$file_new_name."',".$comBirthdate.",".$comWedding.",".$comTravelBooking.",".$comDietStart.",".$comCottonAllergy.",".$comHandicapped.",".$comPregnant.",'".$age."','".$size."','".$height."',".$event.")";
            
    $resultInsert=mysqli_query($con,$sqlInsert);
    $insertedId=mysqli_insert_id($con);    
    $sqlInsertForImage="insert into productimages (product_id,url) values(".$insertedId.",'".$file_new_name."')";
        $resultInsertForImage=mysqli_query($con,$sqlInsertForImage);
   
    for($i=1;$i<count($_FILES['image']['name']);$i++)
    {
        $file_name = $_FILES['image']['name'][$i];
        $file_temp_name=$_FILES['image']['tmp_name'][$i];
        $file_ext_temp=explode('.',$file_name);
        $file_ext= end($file_ext_temp);
        $file_new_name=uniqid('',true).".".$file_ext;
        $file_destinations="images/products/".$file_new_name;
        move_uploaded_file($file_temp_name,$file_destinations);
        $sqlInsertForImage="insert into productimages (product_id,url) values(".$insertedId.",'".$file_new_name."')";
        $resultInsertForImage=mysqli_query($con,$sqlInsertForImage);
    }
         unset($_FILES['image']);
        if($resultInsert)
        {
            
            echo "<script type='text/javascript'>alert('Product is Added Successfully');</script>";
        }
        else
        {
            echo "<script type='text/javascript'>alert('there are some error');</script>";
        }   

   
}


if(isset($_POST["DeleteBtn"]))
{
   
        $sqlDelete="delete from product where id=".$_POST["DeleteBtn"];
        $resultDelete=mysqli_query($con,$sqlDelete);
    
    
    
    
} 

$sqlSelect="select * from product";
    $resultSelect=mysqli_query($con,$sqlSelect);
?>

<!DOCTYPE html>
<html >
    <head>
        <title>Products</title>
        
    </head>
    <body  style="align-content: center;margin:0;" >
    <?php include "header.php" ?>
        <div style="margin-left:auto; margin-right:auto; margin-top:4%; width:80%;text-align: center;background:rgba(0,0,0,.2);border-radius: 20px;margin-bottom:40px;">
            
                <h1 style="padding-top:30px; margin-bottom:30px;color:rgb(33,32,41)">Products</h1>
                
                
                    <form method="POST" style="" enctype="multipart/form-data">
                            
                            <div><input style="font-size:20px;border-radius: 5px;border:1px solid #B7B7B7;padding:5px;margin-bottom: 20px;margin-left: 20px;margin-right: auto;"  type="text" name="title" placeholder="Title" required><div>
                            <div><input style="font-size:20px;border-radius: 5px;border:1px solid #B7B7B7;padding:5px;margin-bottom: 20px;margin-left: 20px;margin-right: auto;"  type="number" name="price" placeholder="Price" required><div>
                            <div><textarea style="font-size:20px;border-radius: 5px;border:1px solid #B7B7B7;padding:5px;margin-bottom: 20px;margin-left: 20px;margin-right: auto;"  type="text" name="description" placeholder="Description" required></textarea><div>
                            <div><input style=" margin-bottom: 10px;margin-left: auto;margin-right: auto;width: 20%;" type="file" name="image[]" accept="image/*" multiple required><div>
                            <div><p style="font-size:22px;">Compatible with Event:</p><div>
                            <div style="display:flex" >
                                <p style="font-size:20px;margin-left: auto;margin-right: 20px"><input style="margin-right: 10px" type="checkbox" name="comBirthdate"/>Birthdate</p> 
                                <p style="font-size:20px;margin-right: 20px"><input style="margin-right: 10px" type="checkbox" name="comWedding"/>Wedding</p> 
                                <p style="font-size:20px;margin-left: 20px;margin-right: 20px"><input style="margin-right: 10px" type="checkbox" name="comTravelBooking"/>TravelBooking</p> 
                                <p style="font-size:20px;margin-right: auto"><input style="margin-right: 10px" type="checkbox" name="comDietStart"/>DietStart</p> 
                            </div>
                            <div><p style="font-size:22px;">Compatible with the adjective:</p><div>
                            <div style="display:flex"> 
                                <p style="font-size:20px;margin-left: auto;margin-right: 20px"><input style="margin-right: 10px" type="checkbox" name="comCottonAllergy"/>cottonAllergy</p> 
                                <p style="font-size:20px;margin-right: 20px"><input style="margin-right: 10px" type="checkbox" name="comHandicapped"/>handicapped</p> 
                                <p style="font-size:20px;margin-left: 20px;margin-right: auto;margin-bottom: 10px;"><input style="margin-right: 10px" type="checkbox" name="comPregnant"/>pregnant</p>

                            </div>
                            
                            <div style="display:flex;margin-left:auto;margin-right:auto;width:20%;margin-bottom: 10px;">
                                <P style="font-size:18px;margin:0;">Age:</P>
                                <select style="font-size:20px;border-radius: 5px;border:1px solid #B7B7B7;padding:1px;margin-left: 38px;width:80%" name="age" required>
                                   
                                <option>Babies</option>
                                <option>Teenagers</option>
                                <option>Young</option>
                                <option>Old</option>

                                    
                                   
                                 </select>
                                 </div>
                                 <div style="display:flex;margin-left:auto;margin-right:auto;width:20%;margin-bottom: 10px;">
                                <P style="font-size:18px;margin:0;">Size:</P>
                                <select style="font-size:20px;border-radius: 5px;border:1px solid #B7B7B7;padding:1px;margin-left: 38px;width:80%" name="size" required>
                                   
                                <option>XS</option>
                                <option>S</option>
                                <option>M</option>
                                <option>L</option>
                                <option>XL</option>
                                <option>XXL</option>

                                    
                                   
                                 </select>
                                 </div>
                                 <div style="display:flex;margin-left:auto;margin-right:auto;width:20%;margin-bottom: 10px;">
                                <P style="font-size:18px;margin:0;">Height:</P>
                                <select style="font-size:20px;border-radius: 5px;border:1px solid #B7B7B7;padding:1px;margin-left: 20px;width:80%" name="height" required>
                                   
                                <option>150-160</option>
                                <option>160-170</option>
                                <option>170-175</option>
                                
                                   
                                   
                                 </select>
                                 </div>
                            <button style="font-size:25px;border-radius: 5px;background-color: rgb(9,8,102);color:rgb(189,207,221);border:none;padding:5px;padding-left: 10px;padding-right: 10px;margin-left: auto;cursor: pointer;margin-bottom: 20px;" type="submit" name="AddBtn">Add</button>
                    </form>
               
               
                <form method="POST" >
        <div style="width:90%;margin-left:auto;margin-right:auto;padding-bottom: 20px;">
            <table style="width:100%;margin-bottom:30px;margin-left:auto;margin-right:auto;direction: ltr;" >
                <thead style="background-color: rgb(9,8,102);color:rgb(189,207,221);text-align:center;">
                    <tr >
                        <th style="font-size:20px;padding:15px;text-align: center;">Id</th>
                        <th style="font-size:20px;padding:15px;text-align: center;">Title</th>
                        <th style="font-size:20px;padding:15px;text-align: center;width:30%">Description</th>
                        <th style="font-size:20px;padding:15px;text-align: center;">Price</th>
                        <th style="font-size:20px;padding:15px;text-align: center;">Compatible with</th>
                        <th style="font-size:20px;padding:15px;text-align: center;">Image</th>
                        <th style="font-size:20px;padding:15px;text-align: center;">Delete</th>
                        
                    </tr>
                    
                </thead>
                <tbody style="background:rgba(255,255,255,.6);">
               
                <?php

							
								while ($row = mysqli_fetch_assoc($resultSelect)) {
									
								$CompatibleWith="";
                                if($row['comBirthdate'])
                                {
                                    $CompatibleWith .="Birthdate ";
                                }
                                if($row['comWedding'])
                                {
                                    $CompatibleWith .="Wedding ";
                                }
                                if($row['comTravelBooking'])
                                {
                                    $CompatibleWith .="TravelBooking ";
                                }
                                if($row['comDietStart'])
                                {
                                    $CompatibleWith .="DietStart ";
                                }
							?>
                        <tr>
                            <td style="text-align:center;font-size:20px;padding: 7px;background-color: rgb(255,204,204);"><?php echo $row['id'];  ?></td>
                            <td style="text-align:center;font-size:20px;padding: 7px;background-color: rgb(255,204,204);"><?php echo $row['title']; ?></td>
                            <td style="text-align:center;font-size:20px;padding: 7px;background-color: rgb(255,204,204);" width="200px"><?php echo $row['description']; ?></td>
                            <td style="text-align:center;font-size:20px;padding: 7px;background-color: rgb(255,204,204);"><?php echo $row['price']; ?></td>
                            <td style="text-align:center;font-size:20px;padding: 7px;background-color: rgb(255,204,204);"><?php echo $CompatibleWith; ?></td>
                            <td style="font-size:20px;padding:15px;;background-color: rgb(255,204,204);"><img src="<?php echo "images/products/". $row['image']; ?>"  height="150px"/></td>
                            <td style="text-align:center;font-size:20px;padding: 7px;background-color: rgb(255,204,204);">
                                
                                <button style="font-size:18px;border-radius: 5px;background-color: rgb(180,50,50);color:rgb(189,207,221);border:none;padding:5px;padding-left: 10px;padding-right: 10px;margin-left: auto;cursor: pointer;margin-bottom: 20px;" type="submit" value="<?php echo $row['id']; ?>" name="DeleteBtn">Delete</button>
                                
                        </td>
                        </tr>

                        <?php
								
							}
			
							?>


               

                        
                </tbody>
            </table>
        </div>                           
        </form>
            
        
         
        </div>
        
        
        
    </body>
</html>