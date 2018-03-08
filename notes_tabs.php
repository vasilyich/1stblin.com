<!DOCTYPE html>
<html>
    <head>
        <title>Alexey's place on a web</title>
        <link rel="stylesheet" href="css/style.css">
        <meta charset="UTF-8">
        <meta name="description" content="Arrangements for Guitar Solo">
        <meta name="keywords" content="guitar, classical guitar, arrangement, notes, tabs">
        <meta name="author" content="Alexey Vasilyev">        
    </head>
    <body>
    <div class="container">
      <header class="header">
      <nav class="topmenu">
	<div class="flags">
	  <a href="" title="Russian" class="langru"><img src="img/ru.png" alt="???????" ></a>	
	  <a href="" title="English" class="langeng"><img src="img/en.png" alt="English" ></a>
          <figure class="logo"><img src="img/logo.png" alt="logo" width="138" height="80"></figure>	
	</div>
        <ul class="menu">
            <li class="menu_item"><a href="index.html"><img src="img/home_icon.png" class="icon">&nbsp&nbspHome</a></li>
            <li class="menu_item"><a href="notes_tabs.php"><img src="img/music_sheet.png" class="musescoreicon">&nbsp&nbspMusic Scores</a></li>
            <li class="menu_item"><a href="refs.html"><img src="img/links_icon.png" class="icon">&nbsp&nbspLinks</a></li>
            <li class="menu_item"><a href="contacts.html"><img src="img/contacts_icon.png" class="icon">&nbsp&nbspContacts</a></li>
        </ul>
      </nav>
      </header>
      <div class="main_body">
        <table id="songs" class="songstab">
	<tr>
		<th>No.</th>
		<th>Img</th>
		<th>Composition</th>
		<th>Difficulty</th>
		<th>Details</th>
		<th>Watch Online</th>
		<th>Buy</th>
	</tr>
<!--  php code starts here -->
	<?php
	include("startup.php");
	startup();
	$result = mysql_query("SELECT song_id, title_rus, difficulty, description, song_url, buy_url  FROM  song");
	if (!$result)
		die(mysql_error());
	
	while($row = mysql_fetch_assoc($result))
	{
	echo"<tr>";
		echo "<td>{$row['song_id']}</td>";
		echo "<td><img src='songs/{$row['song_id']}/pic.jpg'></td>";
		echo "<td>{$row['title_rus']}</td>";
		echo "<td>";
				$dif = $row['difficulty'];
				for ($i = 0; $i < $dif; $i++)
					echo '<img src="img/blue_star.png" width="17" height="17" >' ;
			
		echo"</td>";
		echo '<td> <a href="html/songDetail.php?id= '.$row['song_id'].'">Info</a></td>';
		echo "<td> <a href='{$row['song_url']}' target='_blank'>Watch Online</a></td>";
		echo "<td> <a href='{$row['buy_url']}' target='_blank'>Buy</a></td>";
	echo"<tr>";
	}
?>			

<!--  php code ends here -->
	</table>
	<br>
	</div>
    </body>
</div>
</html>
