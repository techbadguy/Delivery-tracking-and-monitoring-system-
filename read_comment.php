<?php

$db = new mysqli('127.0.0.1','root','philips','contact_form');

$sql = "select * from contact";

$re = $db->query($sql);

$nor = mysqli_num_rows($re);

?>

<style type="text/css">
<!--
.style1 {
	font-size: 24px;
	font-weight: bold;
}
.style5 {font-size: 13px}
.style9 {color: #000000; font-weight: bold; }
#Layer1 {
	position:absolute;
	width:140px;
	height:29px;
	z-index:1;
	left: 747px;
	top: 11px;
}
.style10 {font-size: 20px}
-->
</style>
<p align="center" class="style1">Comments <a href="courier/login.php"><span class="style10">[Admin] </span></a></p>
<table width="781" border="0" align="center" cellpadding="10" cellspacing="0">
  <tr>
    <td width="148" bgcolor="#99CCFF"><span class="style9">Fullname</span></td>
    <td width="189" bgcolor="#99CCFF"><span class="style9">Email</span></td>
    <td width="297" bgcolor="#99CCFF"><span class="style9">Comment</span>
    <div id="Layer1"><?php echo $nor ?> comments found </div></td>
    <td width="67" bgcolor="#99CCFF"><span class="style9">Action</span></td>
  </tr>
<?php
	for($philips=1;$philips<=$nor;$philips++){
		$rows = mysqli_fetch_assoc($re);
?>
  <tr>
    <td><?php echo $rows['NAME']   ?></td>
    <td><?php echo $rows['EMAIL']   ?></td>
    <td><?php echo $rows['COMMENT']   ?></td>
    <td><span class="style5"><a href="del_comment.php?id=<?php echo $rows['ID']  ?>">Delete</a></span></td>
  </tr>
<?php } ?>
</table>
