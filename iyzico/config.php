<?php

require_once('IyzipayBootstrap.php');

IyzipayBootstrap::init();

class Config
{
    public static function options()
    {
        $options = new \Iyzipay\Options();
        $options->setApiKey("setApiKey_Girmelisin");
        $options->setSecretKey("setSecretKey_Girmelisin");
        $options->setBaseUrl("https://api.iyzipay.com");
        return $options;
    }
}