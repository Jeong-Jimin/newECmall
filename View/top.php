<?php
session_start();
?>

<head>
  
    <!-- Setting Page Favicon and Title -->
  <link rel="shortcut icon" href="../Public/img/logo.ico">
  <title>Grid</title>

</head>

<!-- Login Area
            Switch to "display:none" after login process -->

  <div id="loginArea">
    <form method="post" action="../Controller/mainController.php">
      ID <input type="text" name="user_id"> &nbsp;&nbsp;&nbsp;
      PW <input type="password" name="user_pw"> &nbsp;&nbsp;&nbsp;
      <input type="hidden" name="function" value="login" />
      <input class="btn btn-success" type="submit" value="ログイン" onclick="ajax()"/>
    </form>

    <!-- User Register Button -->
    <input class="btn btn-info" type="button"
    value="新規登録" onclick="user_Join()"/>
  </div>


<!-- Login confirmation Area
                      Switch on login successed-->
<?php
if(isset($_SESSION['user_id'])){

  echo "<script>document.getElementById('loginArea').style.display='none'</script>";
  echo "<div id = loginResult; style = 'text-align:center;'>";
$userQualify = $_SESSION['user_qualify'];

echo $_SESSION['user_name']."  様, ようこそ  ";
?>

<!-- Logout Button. linked to Controller -->
<form action="../Controller/mainController.php" method="post">
<input type="hidden" name="function" value="logout"/>
<input type="submit" class="btn btn-default" value="LOGOUT">
</form>

<!-- MYPAGE Button -->
<form method="post" action="./userMypage.php">
    <input type="hidden" name="user_id" value="<?=$_SESSION['user_id'] ?>"/>
    <input type="hidden" name="user_name" value="<?=$_SESSION['user_name'] ?>"/>
    <input type="submit" class="btn btn-default" value="MYPAGE">
</form>

<?php

echo "</div>";
}
?>



  <!-- Insert Banner and Logo -->
  <a href="./main.php" style="color:black;">
  <div style="background-color: #ffffff; border: solid 1px #ffb1b1; float:left; width: 80%;
  height = 200px; margin: 20px 160px;">

    <div class="d-flex justify-content-start" style="float:left;">
      <img src="../Public/img/logo.png"/ width="250px" height="200px">
    </div>

    <div style="float:left;">
      <br><br><br>
      <h1 style="font-family: Comic Sans MS;">GRID PAPER SHOP</h1>
      <p style="font-family: Comic Sans MS;">welcome to visit my shop!</p>
      <p style="font-family: Comic Sans MS;">I: prepared Only for you! enjoy your shopping :D</p>
    </div>
  </div>
  </a>