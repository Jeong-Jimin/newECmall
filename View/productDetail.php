<?php
error_reporting(0);

include '../Model/dbProcessing.php';

$productNum = $_GET['p_num'];
$userId = $_POST['user_id'];

$dbConn = new mysqli(DB_info::DB_URL, DB_info::DB_HOST,
                      DB_info::DB_PW, DB_info::DB_NAME);

 ?>

<!------------------------------------------------------------------------->
<!---------------------------- Default Layout ---------------------------->
<!------------------------------------------------------------------------->

 <head>
   <!-- bootstrap CDN Code Import-->
   <!-- Latest compiled and minified CSS -->
   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
   <!-- jQuery library -->
   <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
   <!-- Popper JS -->
   <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
   <!-- Latest compiled JavaScript -->
   <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>

   <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
   <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

 <style>

 table{
   table-layout: fixed;
   width: 800PX;
 }

 th {
   font-size: 30px;
   width:500px;
   background-color:#ffb1b1;
   border: solid 1px GRAY;
   text-align: center;
 }

 td {
   font-size: 20px;
   text-align: center;
   width:500px;
   border: solid 1px GRAY;
 }

 * {
   margin: 10px 50px 10px 50px;
 }

 .productDiv {
   float: left;
   margin-left: 100px;
 }

 button{
   font-size: 30px;
 }
 </style>

 </head>


<center>


<?php 
  include "./top.php";
?>

<!------------------------------------------------------------------------->
<!---------------------------- //Default Layout ---------------------------->
<!------------------------------------------------------------------------->


<?php

$query = "select * from product_list where p_num = ".$productNum;
$result = mysqli_query($dbConn, $query);
$row = mysqli_fetch_array($result);


$userNumQuery = "select user_num from user_list where user_id = '". $userId."'" ;
$userNumResult = mysqli_query($dbConn,$userNumQuery);
$userNumRow  = mysqli_fetch_assoc($userNumResult);

 ?>

       	<div class="productDiv">
            <div class="thumbnail">
                <input type="image" src="../Public/img/<?=$row['p_img']?>" style="width:500px; height:500px;"/>
            </div>
        </div>

        <div class="productDiv">

          <br><br><br><br>
          <h1><strong><?=$row['p_name']?></strong></h1>
          <br>
            <h2>値段：　<?=$row['p_price']?> 　円（税込み）</h2>
<BR / >
  <h3><?=$row['p_memo']?> </h3>

<form method="post" id="ProductForm">
  <input type="hidden" name="user_num" value="<?=$userNumRow['user_num']?>"/>
  <input type="hidden" name="p_num" value="<?=$row['p_num']?>"/>
  <input type="hidden" name="p_price" value="<?=$row['p_price']?>"/>

  <h2>Stock :
  <select name="p_count">
    <option value="1">1</option>
    <option value="2">2</option>
    <option value="3">3</option>
    <option value="4">4</option>
    <option value="5">5</option>
  </select></h2>


  <input type="image" style="width:200px; height:100px;"
          src="../Public/img/cart.png" onclick="Go_Cart()">


    <input type="hidden" name="user_num" value="<?=$userNumRow['user_num']?>"/>
    <input type="hidden" name="p_num" value="<?=$row['p_num']?>"/>
    <input type="hidden" name="p_price" value="<?=$row['p_price']?>"/>
    <input type="hidden" name="user_id" value="<?=$userId?>"/>
    <input type="hidden" name="user_name" value="<?=$_POST['user_name']?>"/>


    <input type= "image" style="width:200px; height:100px;"
            src="../Public/img/buy.png" onclick="Go_Purchase()">
</form>


  </div>

</center>

<script>

function Go_Cart(){

    $("#ProductForm").attr("action", "../Controller/productCart.php");

}



function Go_Purchase(){
    $("#ProductForm").attr("action", "./productPurchase.php");
}


</script>
