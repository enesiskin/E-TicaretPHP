<?php

require_once('config.php');

$kullanici_id=1;
$kullanici_adsoyad=$kullanicicek['kullanici_adsoyad'];
$kullanici_adsoyadp=explode(" ", $kullanici_adsoyad);

$kullanici_ad=$kullanici_adsoyadp[0];
$kullanici_soyad=$kullanici_adsoyadp[1];
$kullanici_gsm=$kullanicicek['kullanici_gsm'];
$kullanici_mail="mail@mail.com";
$kullanici_zaman="2015-10-05 12:43:35"; 
$kullanici_adresiyaz="Topkapı Sarayı Çatalca / İstanbul";
$kullanici_il="İstanbul";
$siparis_no=356;
$sepettoplam=$toplam_fiyat;


# create request class
$request = new \Iyzipay\Request\CreateCheckoutFormInitializeRequest();
$request->setLocale(\Iyzipay\Model\Locale::TR);
$request->setConversationId("$siparis_no");
$request->setPrice($sepettoplam);
$request->setPaidPrice($sepettoplam);
$request->setCurrency(\Iyzipay\Model\Currency::TL);
$request->setBasketId("$siparis_no");
$request->setPaymentGroup(\Iyzipay\Model\PaymentGroup::PRODUCT);
$request->setCallbackUrl("http://eticaret.neyazilim.com/iyzico/sonuc.php?siparis_no=$siparis_no");
$request->setEnabledInstallments(array(2, 3, 6, 9));


$buyer = new \Iyzipay\Model\Buyer();
$buyer->setId("$kullanici_id");
$buyer->setName("$kullanici_ad");
$buyer->setSurname("$kullanici_soyad");
$buyer->setGsmNumber("$kullanici_gsm");
$buyer->setEmail("$kullanici_mail");
$buyer->setIdentityNumber("74300864791");
$buyer->setLastLoginDate("2015-10-05 12:43:35");
$buyer->setRegistrationDate("$kullanici_zaman");
$buyer->setRegistrationAddress("$kullanici_adresiyaz");
$buyer->setIp("85.34.78.112");
$buyer->setCity("$kullanici_il");
$buyer->setCountry("Turkey");
$buyer->setZipCode("34732");
$request->setBuyer($buyer);

$shippingAddress = new \Iyzipay\Model\Address();
$shippingAddress->setContactName("$kullanici_ad");
$shippingAddress->setCity("$kullanici_il");
$shippingAddress->setCountry("Turkey");
$shippingAddress->setAddress("$kullanici_adresiyaz");
$shippingAddress->setZipCode("34742");
$request->setShippingAddress($shippingAddress);

$billingAddress = new \Iyzipay\Model\Address();
$billingAddress->setContactName("$kullanici_ad");
$billingAddress->setCity("$kullanici_il");
$billingAddress->setCountry("Turkey");
$billingAddress->setAddress("$kullanici_adresiyaz");
$billingAddress->setZipCode("34742");
$request->setBillingAddress($billingAddress);

$basketItems = array();
$firstBasketItem = new \Iyzipay\Model\BasketItem();
$firstBasketItem->setId("$siparis_no");
$firstBasketItem->setName("Binocular");
$firstBasketItem->setCategory1("Collectibles");
$firstBasketItem->setItemType(\Iyzipay\Model\BasketItemType::PHYSICAL);
$firstBasketItem->setPrice($sepettoplam);
$basketItems[0] = $firstBasketItem;
$request->setBasketItems($basketItems);


# make request
$checkoutFormInitialize = \Iyzipay\Model\CheckoutFormInitialize::create($request, Config::options());

# print result
//print_r($checkoutFormInitialize);
//print_r($checkoutFormInitialize->getstatus());
print_r($checkoutFormInitialize->getErrorMessage());
print_r($checkoutFormInitialize->getCheckoutFormContent());



?>

