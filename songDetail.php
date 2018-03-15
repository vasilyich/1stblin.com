<!DOCTYPE html>
<html>
    <head>
        <title>Alexey's place on a web</title>
        <link rel="stylesheet" href="css/style.css">
        <meta charset="UTF-8">
        <meta name="description" content="Arrangements for Guitar Solo">
        <meta name="keywords" content="guitar, classical guitar, arrangement, notes, tabs">
        <meta name="author" content="Alexey Vasilyev">     
		<script src="https://code.jquery.com/jquery-1.11.1.min.js"></script>		
    </head>
		<script src="js/select.js"></script>	
    <body>
    <div class="container">
      <header class="header">
      <nav class="topmenu">
		<select class="flags">
			<option value="1" class="icon-en" selected></option>
			<option value="0" class="icon-ru"></option>
		</select>
          <figure class="logo"><img src="img/logo.png" alt="logo" width="138" height="70"></figure>	
        <ul class="menu">
            <li class="menu_item"><a href="index.html"><img src="img/home_icon.png" class="icon">&nbsp&nbspHome</a></li>
            <li class="menu_item"><a href="notes_tabs.php"><img src="img/music_sheet.png" class="musescoreicon">&nbsp&nbspMusic Scores</a></li>
            <li class="menu_item"><a href="refs.html"><img src="img/links_icon.png" class="icon">&nbsp&nbspLinks</a></li>
            <li class="menu_item"><a href="contacts.html"><img src="img/contacts_icon.png" class="icon">&nbsp&nbspContacts</a></li>
        </ul>
      </nav>
      </header>
	  <div>
<?php 
	include("startup.php");
	startup();
	
	if (isset($_GET['id']))
	{
		$id = $_GET['id'];
		$result = mysql_query("SELECT * FROM  song where song_id=$id");	
	}
	if (!$result)
		die(mysql_error());
	
	$row = mysql_fetch_assoc($result);
	if (!isset($row['song_id']))
	{
		echo"<strong>Data not found</strong>\n";
		die(mysql_error());
	}
	echo "<p class='title_eng'>{$row['title_eng']}</p>\n";
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
				}?></td>
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