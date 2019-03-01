<?php

// Create our function
function CloudSearchQuery($querydomain) {

$url = 'https://cloudsearch.cf/';

// Set our POST params
$params = array(
    'domain'  => $querydomain,
  );


$request =  $url.'api/endpoint.php';

// Generate curl request
$session = curl_init($request);
// Tell curl to use HTTP POST
curl_setopt ($session, CURLOPT_POST, true);
// Tell curl that this is the body of the POST
curl_setopt ($session, CURLOPT_POSTFIELDS, $params);
// Tell curl not to return headers, but do return the response
curl_setopt($session, CURLOPT_HEADER, false);
// Tell PHP not to use SSLv3 (instead opting for TLS)
curl_setopt($session, CURLOPT_SSLVERSION, CURL_SSLVERSION_TLSv1_2);
curl_setopt($session, CURLOPT_RETURNTRANSFER, true);

// obtain response
$response = curl_exec($session);
curl_close($session);

print_r($response);
}

// call function with the domain we want to query
CloudSearchQuery("cloudsearch.cf");

?>
