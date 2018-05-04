<?php
include('setlang.php');
include('translate.php');
?>
<!DOCTYPE html>
<html>
<?php translate('head.xsl'); ?>
<body>
	<div class="container">
        <header class="header">
        <nav class="topmenu">
<?php translate('flags.xsl', 'contacts.php'); ?>
			<figure class="logo">
				<img src="img/logo.png" alt="logo" width="138" height="70"/>
			</figure>
<?php 
	translate('mainmenu.xsl'); 
	if ($_SESSION['lang'] == 'en') {
			$name = "Your Name";
			$email = "Email Address";
			$mailbody = "Email Body";
			$buttonname = "Send";
			$sent_msg = "Your message has been sent";
	} else {
			$name = "Ваше Имя";
			$email = "Адрес электронной почты";
			$mailbody = "Текст сообщения";
			$buttonname = "Послать";
			$sent_msg = "Ваше сообщение было отправлено";
	};
?>
        </nav>
        </header>
		<div class="main_body">
<?php
    if (isset($_GET['message_sent']) && $_GET['message_sent'] == 1) 
    {
        echo "<p>$sent_msg</p>";
    }
?>
			<form class="form" action="action_page.php" method="post">
			  <label for="fullname"><?="{$name}"?></label>
			  <input type="text" id="fullname" name="fullname"/>

			  <label for="email"><?="{$email}"?></label>
			  <input type="text" id="email" name="email"/>

			  <label for="subject"><?="{$mailbody}"?></label>
			  <textarea id="mailbody" name="mailbody" style="height:200px"></textarea>

			  <input type="submit" value='<?="{$buttonname}"?>'/>
			</form>    
			<table class="mycontacts">
				<tr>
					<td><b>Mail To</b></td>
					<td>alexey.vasilyev.guitar@gmail.com</td>
				</tr>
			</table><br>
		</div>
	</div>	
</body>
</html>