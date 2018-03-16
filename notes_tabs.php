<!DOCTYPE html>
<html>
<?php
include('setlang.php');
include('translate.php');
translate('head.xsl');
?>
    <body>
    <div class="container">
      <header class="header">
      <nav class="topmenu">
<?php translate('flags.xsl', 'notes_tabs.php'); ?>
			<figure class="logo">
				<img src="img/logo.png" alt="logo" width="138" height="70"/>
			</figure>
<?php translate('mainmenu.xsl'); ?>
        </nav>
        </header>
      <div class="main_body_music">
        <table id="songs" class="songstab">
<?php 
    translate('notes_tabs_data.xsl');
	include("startup.php");
	startup();
	$result = mysql_query("SELECT * FROM  arrangement where lang_id = '".$_SESSION['lang']."'");
	if (!$result)
		die(mysql_error());
	
	while($row = mysql_fetch_assoc($result))
	{
		echo "<tr>\n";
		echo "<td>{$row['song_id']}</td>\n";
		echo "<td><img src='songs/{$row['song_id']}/pic.jpg'/></td>\n";
		echo "<td>{$row['arrangement_title']}</td>\n";
		echo "<td>\n";
		
		$dif = $row['difficulty'];
		for ($i = 0; $i < $dif; $i++) {
			echo '<img src="img/blue_star.png" class="blue_star"/>';
			echo "\n";
		}
			
		echo "</td>\n";
		
		if ($_SESSION['lang']=="en") {
		    $inf = "Info";
		    $wo = "Watch";
		    $buy = "Buy";
		} else {
		    $inf = "Подробнее";
		    $wo = "Смотреть";
		    $buy = "Купить";
		}
		
		echo '<td><a href="songDetail.php?id='.$row['song_id'].'"/>'.$inf.'</a></td>';
		echo "\n";
		echo "<td><a href='{$row['song_url']}' target='_blank'/>".$wo."</a></td>\n";
		
		if ( empty($row['buy_url']) ) {
			echo "<td>&nbsp</td>\n";
		} else {
			echo "<td><a href='{$row['buy_url']}' target='_blank'/>".$buy."</a></td>\n";
		}
		echo"</tr>\n";
	}
?>				
	</table>
	<br>
	</div>
    </body>
</div>
</html>