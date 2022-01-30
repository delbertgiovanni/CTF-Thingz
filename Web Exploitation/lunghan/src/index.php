<?php     
include("header.php");   
?>

<form action="/index.php" method="GET">
    <input type="text" name="page">
</form>

<?php
include($_GET["page"]);
echo "apakah anda sedang mencari ".$_GET["page"]. " ??";
echo "<BR />";
phpinfo();
?>
