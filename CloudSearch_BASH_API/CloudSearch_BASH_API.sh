#!/bin/bash
domain=$1
curl --data domain={$domain} https://cloudsearch.cf/api/endpoint.php; 
exit 