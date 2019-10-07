<?php

include '../Model/dbProcessing.php';

$dbConn = new mysqli(DB_info::DB_URL, DB_info::DB_HOST,
                      DB_info::DB_PW, DB_info::DB_NAME);

$processQuery = new process();

$userNum = $_POST['user_num'];
$productNum = $_POST['p_num'];
$productPrice = $_POST['p_price'];
$productCount = $_POST['p_count'];


//ユーザー値がNULLではない時
if(($userNum) != '')
	{
  $addCartQuery = $processQuery->insert("cart_list", "(LAST_INSERT_ID(), '$user_num', '$p_num', '$p_count', '$p_price')");

    echo "<script>alert('Add Cart success')</script>";
    echo "<script>window.history.back(2);</script>";
}


//ユーザー値がない場合はカゴ利用不可
else{
  echo "<script>alert('カゴ機能は会員専用機能です。新規登録しますか？')</script>";
  echo "<script>window.history.back(2);</script>";
}

  ?>
