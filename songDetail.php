<!DOCTYPE html>
<html>
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
    translate('head.xsl');
?>
    <body>
    <div class="container">
        <header class="header">
        <nav class="topmenu">
<?php translate('flags.xsl', 'songDetail.php?id=$id'); ?>
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
	echo "<p class='title_eng'>{$row['arrangement_title']}</p>\n";
?>
	<br/>
		<div id="songs" class="song-info">
		<table class="details">
		<tr>
			<th>Difficulty</th>
			<td width="490"><?php $dif = $row['difficulty'];
				for ($i = 0; $i < $dif; $i++)
				{
					echo '<img src="img/blue_star.png" class="blue_star" \n>';
					echo "\n";
				}?>
			</td>
		</tr>
		<tr>
			<th>Tuning</th>
			<td><?="{$row['tuning']}\n"?></td>
		</tr>
		<tr>
			<th>Original key</th>
			<td><?="{$row['original_key']}\n"?></td>
		</tr>
		<tr>
			<th>Description</th>
			<td><?="{$row['description']}\n"?></td>
		</tr>
		</table>
		</div>
		<div class="responsive-container">
	<iframe  src="<?="{$row['embed_code']}\n"?>" frameborder="0" allowfullscreen></iframe>
		</div>
		<div class="arrowback"> 
			<a href="notes_tabs.php"><img src="img/arrow.png" class="arrow">&nbsp&nbsp&nbspBack&nbsp</a>
		</div></br>
	  </div>
	</div>
</body>	
</html>