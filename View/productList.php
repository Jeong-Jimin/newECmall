<?php

include '../Model/dbProcessing.php';
error_reporting(0);

$db_con   =   new mysqli(DB_info::DB_URL, DB_info::DB_HOST,
                          DB_info::DB_PW, DB_info::DB_NAME);


//Total number of products in the database
$query    =   "select count(*)as cnt from product_list";
$result   =   mysqli_query($db_con,$query);
$row      =   mysqli_fetch_array($result);
$total    =   $row[cnt];

$_SESSION['user_id']    = $_POST['user_id'];
$_SESSION['user_name']  = $_POST['user_name'];

if (!isset($_SESSION['user_id'])){
  session_start();
}
 ?>

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

 <style>

 table{
   table-layout: fixed;
   width: 800PX;
 }

 th {
   font-size: 30px;
   width:500px;
   text-align: center;
 }

 td {
   font-size: 20px;
   text-align: center;
   width:500px;
 }

 * {
   margin: 10px 50px 10px 50px;
 }

 center, table {
     margin: 0px;
 }
 </style>

 </head>

<center>

<?php 
  include "./top.php";
?>

</center>



<html>
<center>
  <body>
    <table class="table table-hover">
      <tr class="bg-danger">
        <th scope="col">
          Product
        </th>
        <th scope="col">
          Name
        </th>
        <th scope="col">
          Price
        </th>
      </tr>

<?php

//Number of products to display on the page
//For Pagenation
$pageNum =   10;

$start = $_GET['start'];

//Start number on first connection = 0
if(!$start) {
$start    =   0;
}

$query = "select * from product_list order by p_num desc limit $start, $pageNum";

$result = mysqli_query($dbConn, $query);
while ($row = mysqli_fetch_array($result)) {?>
<tr>
<td>
  <form action="./productDetail.php?p_num=<?=$row['p_num']; ?>" method="post" id = "session_submit">

     <input type="hidden" name="user_id" value="<?php echo  $_SESSION['user_id']; ?>"/>
    <input type="hidden" name="user_name" value="<?php echo   $_SESSION['user_name']; ?>"/>
    <input type="image"
    name="Submit1" src="../Public/img/<?=$row['p_img']?>" style="width:200px; height:200px;" onclick="auto_submit()"/>
  </form>
</td>

  <td><a href="#" style="color:black;"><?=$row['p_name']?></a></td>
    <td><?=$row['p_price']?>円</td>

</tr>

  <!-- <a href="./product_Detail.php?p_num=<?=$row['p_num']; ?>"> -->
<?php
}?>
</table>

<?php

$pages = round($total/$pageNum) + 1;



for($i = 0 ; $i<$pages ; $i++ ){

  $start = $pageNum * $i;
  $print_page = $i+1;


echo "<a href = $PHP_SELF?start=$start > $print_page </a>";

}

  ?>
  </body>
</center>
</html>


<script>
  function auto_submit(){
    window.onload = function(){
      document.session_submit.Submit1.click();
    }
  }
</script>
