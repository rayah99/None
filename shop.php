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

$sqlSelectCalender="select * from calender where user_id =".$_SESSION["user_id"]." ORDER BY date limit 1";
$resultSelectCalender=mysqli_query($con,$sqlSelectCalender);


$firstCalender="";
if(mysqli_num_rows($resultSelectCalender)>0)
{
    $rowCalender=mysqli_fetch_assoc($resultSelectCalender);
   
    // if($rowCalender["Birthdate"]==1)
    // {
    //     $firstCalender="comBirthdate";
    // }else 
    if($rowCalender["wedding"]==1)
    {
        $firstCalender="comWedding";
    }else if($rowCalender["TravelBooking"]==1)
    {
        $firstCalender="comTravelBooking";
    }else if($rowCalender["DietStart"]==1)
    {
        $firstCalender="comDietStart";
    }
}

$sqlSelectHealth="select * from health where userid =".$_SESSION["user_id"];

$resultSelectHealth=mysqli_query($con,$sqlSelectHealth);
$comCottonAllergy;
$comHandicapped;
$comPregnant;
$ageType;
$size;

if(mysqli_num_rows($resultSelectHealth)>0)
{
    $rowHealth=mysqli_fetch_assoc($resultSelectHealth);
    if($rowHealth["cottonAllergy"]==0)
    {
        $comCottonAllergy="comCottonAllergy";
    }else{
        $comCottonAllergy=1;
    }

    if($rowHealth["handicapped"]==0)
    {
        $comHandicapped="comHandicapped";
    }else{
        $comHandicapped=1;
    }

    if($rowHealth["pregnant"]==0)
    {
        $comPregnant="comPregnant";
    }else{
        $comPregnant=1;
    }
    $age = date_diff(date_create($rowHealth["birthDate"]), date_create('now'))->y;
    if($age<1)
    {
        $ageType="Babies";
    }else if($age<=18 && $age>=12)
    {
        $ageType="Teenagers";
    }else if($age<=40 && $age>=19)
    {
        $ageType="Young";
    }else if($age>=41)
    {
        $ageType="Old";
    }

    $usermonth = date_diff(date_create($rowHealth["birthDate"]), date_create('now'))->d;
    $userday = date_diff(date_create($rowHealth["birthDate"]), date_create('now'))->m;
    if(($usermonth ==0) && ($userday<=5  && $userday>=0)
    {
        $firstCalender="comBirthdate";
    }
}

if($rowHealth["weight"]<=55 && $rowHealth["weight"]>=48)
{
    $size="XS";
}else if($rowHealth["weight"]<=65 && $rowHealth["weight"]>56)
{
    $size="S";
}else if($rowHealth["weight"]<=75 && $rowHealth["weight"]>=66)
{
    $size="M";
}else if($rowHealth["weight"]<=85 && $rowHealth["weight"]>=76)
{
    $size="L";
}else if($rowHealth["weight"]<=95 && $rowHealth["weight"]>=86)
{
    $size="XL";
}else if($rowHealth["weight"]<=120 && $rowHealth["weight"]>=95)
{
    $size="XXL";
}
$height;
if($rowHealth["height"]<=160 && $rowHealth["height"]>=150)
{
    $height="150-160";
}else if($rowHealth["height"]<=170 && $rowHealth["height"]>=161)
{
    $height="160-170";
}else if($rowHealth["height"]<=175 && $rowHealth["height"]>=171)
{
    $height="170-175";
} 

$sqlSelect="select * from product where (".$firstCalender." =1 || event=0) and comCottonAllergy=".$comCottonAllergy.
            " and comHandicapped=".$comHandicapped." and comPregnant=".$comPregnant." and age='".$ageType."' and size='".$size."' and height='".$height."'";

    $resultSelect=mysqli_query($con,$sqlSelect);


    if(isset($_GET["orderBtn"]))
    { 
        header("location:productDetailes.php?product_id=".$_GET["orderBtn"]);
    }
?>

<!DOCTYPE html>
<html >
    <head>
        <title>Shop</title>
        
    </head>
    <body  style="align-content: center;margin:0;background:rgb(255,255,255)" >
    <?php include "header.php" ?>
        <div style="margin-left:auto; margin-right:auto; margin-top:4%; width:60%;text-align: center;border-radius: 20px;margin-bottom:40px;width:60%">
            
                <h1 style=" margin-bottom:30px;color:rgb(33,32,41)">Shop</h1>
            
                <form style="display:flex;flex-wrap: wrap;text-align: center;">

                <?php
			
                        
                   if (mysqli_num_rows($resultSelect)>0)
                   {
                      while($row = mysqli_fetch_array( $resultSelect )) 
                         {
                ?>
                    <div style="background-color:rgba(255,255,255);width:200px;margin-right:10px;margin-left:10px;margin-bottom:20px;text-align: left;border-radius:0px 0px 10px 10px;">
                            <div style="margin-bottom:10px;text-align: center; margin-right:auto;margin-left:auto;"><img width="180px" height="180px" src="images/products/<?php echo $row['image']?>"/></div>
                            <div style="margin-bottom:5px"><label style="font-size:19px;color:rgb(0,0,0);margin-left:5px;"><?php echo $row['title']?></lable></div>
                            <div ><label style="font-size:15px;color:rgb(128,123,123);margin-left:5px;"><?php echo $row['price']?> SR</lable></div>
                            <div ><Button type="submit" name="orderBtn" value="<?php echo $row['id']?>" style="border:none;border-radius:0px 0px 10px 10px;font-size:20px;background-color: rgb(255,204,204);color:rgb(0,0,0);cursor: pointer;margin:0px;width:100%;padding:5px;">Order Now</Button></div>
                        </div>
                <?php
                         }
	                 }else
                     {
                ?>

                        <div style="height:28vh"></div>
                <?php
                     }
			
			    ?>        
                    </form>
         
        </div>
        
        
        <?php include "footer.php" ?>
    </body>
</html>