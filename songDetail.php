<?php
	include("startup.php");
	startup();
	include('setlang.php');
	
	if (isset($_GET['id']))
	{
		$id = $_GET['id'];
		$lang_id = $_SESSION['lang'];
		$result = mysql_query("SELECT * FROM arrangement where song_id = $id and lang_id = '".$lang_id."'");	
	}
	if (!$result)
		die(mysql_error());

    include('translate.php');
?>
<!DOCTYPE html>
<html>
<?php translate('head.xsl'); ?>
    <body>
    <div class="container">
        <header class="header">
        <nav class="topmenu">
<?php translate('flags.xsl', "songDetail.php", "&id=$id"); ?>
        <figure class="logo">
            <img src="img/logo.png" alt="logo" width="138" height="70">
        </figure>
<?php translate('mainmenu.xsl'); ?>
      </nav>
      </header>
	  <div>
<?php 
	$row = mysql_fetch_assoc($result);
	if (!isset($row['song_id']))
	{
		echo"<strong>Data not found</strong>\n";
		die(mysql_error());
	}
	
?>
		<div id="songs" class="song-info">
		<table class="details">
		<tr>
		<th class="arrangement_title" colspan="2"><?="{$row['arrangement_title']}\n"?></th>	
		</tr>
		<tr>
<?php			
		if ($lang_id == 'en') {
			$diff = "Difficulty";
			$tun = "Tuning";
			$key = "Key";
		} else {
			$diff = "Сложность";
			$tun = "Строй";
			$key = "Тональность";
		}
?>              	<th><?="{$diff}"?></th>
			<td>
<?php		$dif = $row['difficulty'];

		for ($i = 0; $i < $dif; $i++) {
			echo '<img src="img/blue_star.png" class="blue_star"/>';
			echo "\n";
		}
?>
			</td>
		</tr>
		<tr>
			<th><?="{$tun}"?></th>
			<td><?="{$row['tuning']}\n"?></td>
		</tr>
		<tr>
			<th><?="{$key}"?></th>
			<td><?="{$row['original_key']}\n"?></td>
		</tr>
		<tr>
			<td class="responsive-container" colspan="2"><iframe  src="<?="{$row['embed_code']}\n"?>" frameborder="0" allowfullscreen></iframe></td>
		</tr>
		<tr>
			<td colspan="2"><?="{$row['description']}\n"?></td>
		</tr>
		</table>
		</div>
		<br/>
		<div class="arrowback"> 
			<a href="notes_tabs.php"><img src="img/arrow.png" class="arrow">&nbsp&nbsp&nbspBack&nbsp</a>
		</div>
		<div class="buynow"> 
			<a href=""><img src="img/cart.png" class="arrow">&nbsp&nbsp&nbspBuy&nbsp</a>
		</div>
		<br/>
	  </div>
	</div>
</body>	
</html>