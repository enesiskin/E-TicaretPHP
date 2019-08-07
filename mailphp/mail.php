<?
include '../../nedmin/netting/baglan.php';
require("class.phpmailer.php");

if ($_POST['toplam']!=$_POST['islem']) {
	
	header("Location:index.php")
	exit;
} {



	//Mysql den mail bilgilerimizi çekiyoruz.
	$ayarsor=$db->prepare("select * from ayar where ayar_id=?");
	$ayarsor->execute(array(0));
	$ayarcek=$ayarsor->fetch(PDO::FETCH_ASSOC);


	$mail = new PHPMailer();
	$mail->IsSMTP();  
	$mail->CharSet="SET NAMES UTF8";                               // send via SMTP
	$mail->Host     = $ayarcek['ayar_smtphost']; // mailin gideği host
	$mail->SMTPAuth = true;     // güvenli gitsin
	$mail->Username = $ayarcek['ayar_smtpuser'];  // SMTP hosttaki mail
	$mail->Password = $ayarcek['ayar_smtppassword'];// SMTP hosttaki mailin parolası
	$mail->Port     = $ayarcek['ayar_smtpport'];
	$mail->From     = $ayarcek['ayar_smtpuser'];  // smtp kullanıcı adı ile aynı olmalıymış

	$mail->AddAddress("JoyAkademi@emrahyuksel.com.tr","Form Mail");	//Çoklu mail için bu satırı çoğaltılır gidecek mail

	$mail->Subject  =  $_POST['adsoyad']; // formdaki ad
	$mail->Body     =  implode("    ",$_POST); // form dan gelen postları mail içeriğine aktar

if(!$mail->Send())
{
	echo "Mesaj Gönderilemedi <p>";
	echo "Mailer Error: " . $mail->ErrorInfo;
	exit;
}

header("Location:iletisim.php")
	exit;
}

?>
<!--<meta http-equiv="refresh" content="0;URL=../iletisim.php?durum=ok">-->