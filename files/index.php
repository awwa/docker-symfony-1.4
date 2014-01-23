<?php


require_once(dirname(__FILE__).'/../config/ProjectConfiguration.class.php');

$configuration = ProjectConfiguration::getApplicationConfiguration('frontend', 'prod', false);
sfContext::createInstance($configuration)->dispatch();

$mailer = sfContext::getInstance()->getMailer();
$message = Swift_Message::newInstance()
        ->setFrom('sender@sender.com')
        ->setTo('recipient@recipient.com')
        ->setSubject('Subject')
        ->setBody('Body');
$mailer->send($message);

# This is not worked
#myEmail::sendEmail(array('text'=>'mail/registrationTEXT', 'html'=>'mail/registrationHTML'), array('name'=>'Recipient Name'), 'test@test.com', 'test@test.com', 'Registration Information');

