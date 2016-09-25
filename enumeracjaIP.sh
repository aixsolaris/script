#!/bin/bash
 
for i in `prips 91.224.215.0/24`
do
  echo $i - `echo | timeout 2 openssl s_client -showcerts -connect $i:443 -servername sni \
  2>/dev/null | openssl x509 -text | grep DNS` >> ssl_domains.log
  sleep 1
done
