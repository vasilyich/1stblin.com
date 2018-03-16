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
<?php translate('flags.xsl', 'index.php'); ?>
			<figure class="logo">
				<img src="img/logo.png" alt="logo" width="138" height="70"/>
			</figure>
<?php translate('mainmenu.xsl'); ?>
        </nav>
        </header>
		<div class="main_body">
			<table width="100%" id="hometable">
			<tr>
				<td width="10%">&nbsp</td>
                <td>
                <p class="aboutme"><img src="img/me.jpg" alt="in the woods" class="my_photo"/></p>			
                <br/>
<?php translate('index_data.xsl'); ?>
			    </td>
		        <td width="10%">&nbsp</td>
		    </tr>
			</table>
	    </div>
	</div>      
</body>
</html>