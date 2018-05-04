<?php
function complete_mail() { 
    $_POST['fullname'] =  substr(htmlspecialchars(trim($_POST['fullname'])), 0, 100); 
    $_POST['email'] =  substr(htmlspecialchars(trim($_POST['email'])), 0, 100); 
	$_POST['mailbody'] =  substr(htmlspecialchars(trim($_POST['mailbody'])), 0, 1000000); 
		
    // если не заполнено поле "Имя" - показываем ошибку 0 
    if (empty($_POST['fullname'])) 
        output_err(0); 
    
    // если неправильно заполнено поле email - показываем ошибку 1 
    if(!preg_match("/[0-9a-z_]+@[0-9a-z_^\.]+\.[a-z]{2,3}/i", $_POST['email'])) 
         output_err(1);
    else
        $from = $_POST['email'];
         
    // если не заполнено поле "Сообщение" - показываем ошибку 2 
    if(empty($_POST['mailbody'])) 
        output_err(2); 
    else 
        $message = $_POST['mailbody'];
    
    // создаем наше сообщение 
    $subject = 'Имя отправителя:'.$_POST['fullname']; 
        
    // $to - кому отправляем 
    $to = 'alexey.vasilyev.guitar@gmail.com'; 

    $headers = 'Reply-To: ' . $from . "\r\n";
    
    mail($to, $subject, $message, $headers);
    
//    mail($to, $mess, "From:".$_POST['email']); 
//    echo 'Спасибо! Ваше письмо отправлено.'; 
    header('Location: /contacts.php?message_sent=1');
} 
 
function output_err($num) 
{ 
    $err[0] = 'ОШИБКА! Не введено имя.'; 
    $err[1] = 'ОШИБКА! Неверно введен e-mail.'; 
    $err[2] = 'ОШИБКА! Не введено сообщение.'; 
    echo '<p>'.$err[$num].'</p>';  
    exit(); 
} 
 
if (!empty($_POST['email'])) complete_mail(); 
?>