<?
include '../nedmin/netting/baglan.php';
require("class.phpmailer.php");

$kullanici_mail=$_POST['kullanici_mail'];
$kullanicisor=$db->prepare("select * from kullanici where kullanici_mail=:mail");
$kullanicisor->execute(array(
	'mail' => $kullanici_mail
	));

$kullanicicek=$kullanicisor->fetch(PDO::FETCH_ASSOC);

$kullanici_id=$kullanicicek['kullanici_id'];

$say=$kullanicisor->rowCount();

if ($say) {
	
	$ayarsor=$db->prepare("select * from ayar where ayar_id=?");
	$ayarsor->execute(array(0));
	$ayarcek=$ayarsor->fetch(PDO::FETCH_ASSOC);

	//Şifre Üretme

	function uret($uzunluk)
	{

		if(!is_numeric($uzunluk) || $uzunluk <= 0)
		{
			$uzunluk = 8;
		}
		if($uzunluk  > 32)
		{
			$uzunluk = 32;
		}

		$karakter = 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789';

		mt_srand(microtime() * 1000000);

		for($i = 0; $i < $uzunluk; $i++)
		{
			$key = mt_rand(0,strlen($karakter)-1);
			$pwd = $pwd . $karakter{$key};
		}

		for($i = 0; $i < $uzunluk; $i++)
		{
			$key1 = mt_rand(0,strlen($pwd)-1);
			$key2 = mt_rand(0,strlen($pwd)-1);

			$tmp = $pwd{$key1};
			$pwd{$key1} = $pwd{$key2};
			$pwd{$key2} = $tmp;
		}

		return $pwd;
	}

	//Şifre Üretme
	$uret=uret(6); echo "<br>";
	$kullanici_password=md5($uret);



	$ayarkaydet=$db->prepare("UPDATE kullanici SET
		kullanici_password=:password
		WHERE kullanici_id={$kullanici_id}");
	$update=$ayarkaydet->execute(array(	
		'password' => $kullanici_password
		));

	if ($update) {
		
		echo "başarılı kayıt";
	} else {

		echo "başarısız";
	}




	$konu="Sifre Sifirlama";

	$mail = new PHPMailer();

	$mail->IsSMTP();  
$mail->Host     = $ayarcek['ayar_smtphost']; // SMTP servers
$mail->SMTPAuth = true;     // turn on SMTP authentication
$mail->Username = $ayarcek['ayar_smtpuser'];  // SMTP username
$mail->Password = $ayarcek['ayar_smtppassword'];// SMTP password
$mail->Port     = $ayarcek['ayar_smtpport'];
$mail->From     = $ayarcek['ayar_smtpuser']; // smtp kullanýcý adýnýz ile ayný olmalý
$mail->Fromname = "Şifre Sıfırlandı";
$mail->AddAddress($_POST['kullanici_mail'],"Şifre Sıfırlandı");
$mail->CharSet="SET NAMES UTF8";                               // send via SMTP
$mail->Subject  =  $konu;
$mail->Body     =  "Şifreniz Sıfırlandı Yeni Şifreniz: $uret";

if(!$mail->Send())
{
	echo "Mesaj Gönderilemedi <p>";
	echo "Mailer Error: " . $mail->ErrorInfo;
	exit;
}

echo "Mesaj Gönderildi";


?>
<meta http-equiv="refresh" content="0;URL=../login.php">
<?php
}

?>



