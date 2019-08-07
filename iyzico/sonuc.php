<?php
ob_start();
session_start();
require_once('config.php');

$token=$_POST['token'];
$siparis_no=$_GET['siparis_no'];


$request = new \Iyzipay\Request\RetrieveCheckoutFormRequest();
$request->setLocale(\Iyzipay\Model\Locale::TR);
$request->setConversationId("$siparis_no");
$request->setToken("$token");
$checkoutForm = \Iyzipay\Model\CheckoutForm::retrieve($request, Config::options());

//print_r($checkoutForm->getStatus());
echo $odeme_durum=$checkoutForm->getPaymentStatus();
echo "<br>";
$islem_no=$checkoutForm->getpaymentId();




if ($odeme_durum=="FAILURE") {
	
	echo "Başarısız Ödeme...";


} elseif ($odeme_durum=="SUCCESS") {

	echo "Süpper Başarılı Ödeme işlem numaranız :".$islem_no;

	
}
?>
