<?php

include '../Model/dbProcessing.php';
session_start();

$Function = $_POST['function'];
$today = date('Ymdhis');
$processQuery = new process();

$dbConn = new mysqli(DB_info::DB_URL, DB_info::DB_HOST,
                      DB_info::DB_PW, DB_info::DB_NAME);

//DB Connect Error Exception
if($dbConn->connect_error){
  die("Failed to connet to DataBase".$dbConn->connet_error);
}


/*********************************************************************/
/************ Receive function value to execute each process *********/
/*********************************************************************/



if($Function == "login"){
  $userId = $_POST['user_id'];
  $userPw = $_POST['user_pw'];

  $sql = "select * from user_list where user_id = '$userId'";

  $result = mysqli_query($dbConn, $sql);
  $row = mysqli_fetch_assoc($result);


  //Doesn't Input Value Exception
  if(($userId == NULL)||($userPw == NULL)){
      echo "<script>alert('Input the Value')</script>";
      echo "<script>location.href = './main.php'</script>";
    }

//Doesn't Exist ID Exception
if($row['user_id'] == ''){
    echo "<script>alert('Doesn't Exist ID. Join plz')</script>";
    echo "<script>location.href = '../View/main.php'</script>";
}

//Correct to Login information
if($userId == $row['user_id']){

  if ($userPw == $row['user_pw'] )
  {

   $_SESSION['user_id'] = $row['user_id'];
   $_SESSION['user_pw'] = $row['user_pw'];
   $_SESSION['user_name'] = $row['user_name'];
   $_SESSION['user_qualify'] = $row['user_qualify'];

   echo "<script>alert('Login success! $today')</script>";
  }

  elseif ($userPw == NULL) {
    echo "<script>alert('input the Password')</script>";
  }

//Exist ID, Wrong Password Exception
  elseif($userPw != $row['user_pw']){
    echo "<script>alert('Wrong Password. try again')</script>";
  }

echo "<script>location.href ='../View/main.php'</script>";
}
}//End of Login Exception


/*********************************************************************/
/*********************************************************************/

if($Function == "join"){

  $joinID = $_POST['joinID'];
  $joinPW = $_POST['joinPW'];
  $joinNM = $_POST['joinNM'];
  $joinMB = $_POST['joinMB'];

if(($joinID == NULL) || ($joinPW == NULL) || ($joinMB == NULL) || ($joinNM == NULL)){
  echo "<script>alert('input the Value')</script>";
  echo "<script>self.close()</script>";
}

else{


$query = $processQuery->insert("user_list", "(LAST_INSERT_ID(),'$joinID','$joinPW','$joinNM','$joinMB','1')");

$result  = mysqli_query($dbConn, $query);


if(isset($result)){
  echo "<script>window.alert('Success to Register. Login please!')</script>";
  echo "<script>self.close()</script>";
}

}
}

if($Function == "logout"){
  session_destroy();
  echo "<script>location.href ='../View/main.php'</script>";

}
/*****Processing user-related tasks*****/


/*****Processing product-related tasks*****/
if($Function == "product_register"){

$productName  = $_POST['p_name'];
$productMemo  = $_POST['p_memo'];
$productPrice = $_POST['p_price'];
//$productImage = $_FILES['p_img'];

$dir = '../Public/img';
$imgName = date('YmdHi').".png";

//Save image to path folder and database
if(move_uploaded_file($_FILES['p_img']["tmp_name"], "$dir/$imgName")){

  $query =
  $processQuery->insert("product_list","(LAST_INSERT_ID(),'$productName','$productMemo','$productPrice','$imgName')");
};

echo "<script>alert('Register Complete')</script>";
echo "<script>self.close()</script>";
}



if($Function=="purchase"){

/* Receive value from product_Purchase file */
$user_num = $_POST['user_num'];
$p_num = $_POST['p_num'];
$p_count = $_POST['p_count'];
$p_payment = $_POST['payment'];
$p_deliveryDate = $_POST['deliveryDate'];
$p_money = $_POST['p_money'];

$customer_name = $_POST['customer_name'];
$customer_mobile = $_POST['customer_mobile'];
$customer_postnum = $_POST['customer_postnum'];
$customer_address = $_POST['customer_address'];
$order_date = date('ymd');
global $today;

/* Insert order information in order_list table */
/* do not allowed duplicate */
$processQuery->insert("order_list","('$today','$user_num','$p_num','$p_count','$p_money', '$p_payment','$p_deliveryDate', '$order_date')");



/*Insert orderer information in customer_list table*/
/*  duplicate allowed */
$processQuery->insert("customer_list", "('$today', '$user_num', '$customer_name','$customer_mobile','$customer_postnum','$customer_address' )");


echo "<script>alert('Order Complete! Thank you for your purchase :) you can check order in mypage')</script>";
echo "<script>location.href = '../View/main.php'</script>";
}

 ?>
