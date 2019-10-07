<?php 
include'../Model/dbProcessing.php';

//Create Mysqli Object
$dbConn   =   new mysqli(DB_info::DB_URL, DB_info::DB_HOST,
                          DB_info::DB_PW, DB_info::DB_NAME);

      $query   =   "select * from product_list where p_num =".$_POST['p_num'];
      $result  =   mysqli_query($db_con,$query);
      $row     =   mysqli_fetch_array($result);
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


   <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
   <link rel="stylesheet" href="/resources/demos/style.css">
   <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
   <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>


<style>
    #wrap { width:800px; margin:50px auto; }
    #wrap dl dt { font-size:20px; font-weight:bold; border-bottom:1px dotted silver;
             cursor:pointer; position:relative; height:60px; color:silver; }
</style>
 </head>



<center style="margin:20px 100px;">

<?php 
  include "./top.php";
?>

<div style="width: 300px; height: 280px; opacity=100%">

</div>

<div id="wrap">

<!----------------------------------------------------------------------------------->
<!------------ Form for Sending Value to Controller -------------->
<!----------------------------------------------------------------------------------->

<form action="../Controller/mainController.php" method="POST">

    <input type="hidden" name="function" value="purchase"/>
    <input type="hidden" name="p_num" value="<?=$_POST['p_num']?>"/>
    <input type="hidden" name="p_count" value="<?=$_POST['p_count']?>"/>
    <input type="hidden" name="user_num" value="<?=$_POST['user_num']?>"/>
    <div id="accordion">
      <h3>注文情報</h3>

    <div class="thumbnail">
        <img src="../Public/img/<?= $row['p_img']?>" width="200px" height="200px"/>
        <div class="caption">
            <p> <?= $row['p_name']; ?>    </p>


    <p>    Stock: <input type="text" value="<?= $_POST['p_count']  ?>"  id="p_count" name="p_count"/>個
    </p>

            <p> 値段：<?= $row['p_price']; ?>  </p>


            <?php
                $productCount = $_POST['p_count'];
                $productMoney = $row['p_price']* $productCount ?>
<input type="hidden" name="p_money" value="<?= $productMoney ?>">

            <p> 合計：<?= $productMoney; ?>  </p>
        </div>
    </div>

    <?php
        $query = "select * from user_list where user_id = '". $_POST['user_id']."'" ;

        $result = mysqli_query($dbConn, $query);
        $row = mysqli_fetch_array($result);
    ?>


      <h3>配送先情報入力</h3>
      <div>
        <p>
        注文者名<input type="text" value="<?=$row['user_name'] ?>" name="customer_name"/>
        </p>
        <p>
        連絡先 <input type="text" value="<?=$row['user_mobile'] ?>" name="customer_mobile"/>
        </p>
        <p>
        郵便番号<input type="text" name="customer_postnum" placeholder="7 letters number"/>
        </p>
        <p>
        詳細住所<input type="text" name="customer_address"/>
        </p>
        <p>
        備考欄<input type="textarea" name="describe"/>
        </p>
      </div>


      <h3>お届け予定日設定</h3>
      <div id="datepicker-center">
          <p>Date: <input type="text" id="datepicker" class="datepicker" name="deliveryDate"></p>
          <p><strong>※お届け予定日は必ず注文日より3日後からお選びください※</strong></p>
      </div>


      <h3>お支払い情報入力</h3>
      <div class="widget">
          <h2>お支払い方法選択</h2>
        <fieldset>
          <legend>Select a Payment Information: </legend>

          <img src="../Public/img/card_all.gif"/><br />
          <label for="radio-1">クレジットカード</label>
          <input type="radio"  name="payment" id="payment" value="クレジットカード"><br /><br />

          <img src="../Public/img/after_payment_l.png"/><br />
          <label for="radio-2">コンビニ決済</label>
          <input type="radio" name="payment" id="payment" value="コンビニ決済"><br /><br />

          <img src="../Public/img/29_50px_05.gif"/><br />
          <label for="radio-3">代金引換</label>
          <input type="radio" name="payment" id="payment" value="代引き"><br /><br />


           <img src="../Public/img/31_50px_02.gif"/><br />
          <label for="radio-3">郵便建替</label>
          <input type="radio" name="payment" id="payment" value="郵便建替"><br /><br />
        </fieldset>

      </div>
    </div>

<br>

    <input type="submit" value="この内容で注文"/>
</form>

<!--------------------------------------------------------------->
<!------------ Form for Sending Value to Controller ------------->
<!--------------------------------------------------------------->
</center>
</div>



<script>
//JQuery function Import

$( function() {
$( "#datepicker" ).datepicker({
    monthNames: ['1月', '2月', '3月', '4月', '5月', '6月', '7月', '8月', '9月', '10月', '11月', '12月'],
dayNames: ['日', '月', '火', '水', '木', '金', '土'],
dateFormat: 'yy/mm/dd'
});
} );

$( function() {
  $( "#accordion" ).accordion();
} );

$( function() {
   $( "input" ).checkboxradio();
 } );

</script>
