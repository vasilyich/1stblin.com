<?php
function complete_mail() { 


        $_POST['fullname'] =  substr(htmlspecialchars(trim($_POST['fullname'])), 0, 30); 
        $_POST['email'] =  substr(htmlspecialchars(trim($_POST['email'])), 0, 50); 
		$_POST['subject'] =  substr(htmlspecialchars(trim($_POST['subject'])), 0, 1000000); 
        // если не заполнено поле "Имя" - показываем ошибку 0 
        if (empty($_POST['fullname'])) 
             output_err(0); 
        // если неправильно заполнено поле email - показываем ошибку 1 
        if(!preg_match("/[0-9a-z_]+@[0-9a-z_^\.]+\.[a-z]{2,3}/i", $_POST['email'])) 
             output_err(1); 
        // если не заполнено поле "Сообщение" - показываем ошибку 2 
        if(empty($_POST['subject'])) 
             output_err(2); 
        // создаем наше сообщение 
        $subject = ' 
        Имя отправителя:'.$_POST['fullname'].' 
        Контактный email:'.$_POST['email'].' 
        '.$_POST['subject']; 
        // $to - кому отправляем 
        $to = 'alexey.vasilyev3@googlemail.com'; 
        // $from - от кого 
        $from='alexey.vasilyev.guitar@gmail.com'; 
        mail($to, $mess, "From:".$from); 
        echo 'Спасибо! Ваше письмо отправлено.'; 
} 
 
function output_err($num) 
{ 
    $err[0] = 'ОШИБКА! Не введено имя.'; 
    $err[1] = 'ОШИБКА! Неверно введен e-mail.'; 
    $err[2] = 'ОШИБКА! Не введено сообщение.'; 
    echo '<p>'.$err[$num].'</p>';  
    exit(); 
} 
 
if (!empty($_POST['submit'])) complete_mail(); 

?>
