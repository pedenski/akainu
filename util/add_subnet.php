<?php



require_once( __DIR__ . '/../vendor/autoload.php' );


$sub = new IPv4\SubnetCalculator( '10.167.95.47', 26 );
echo $sub;


?>