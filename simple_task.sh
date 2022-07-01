#!/bin/bash

uuid=""



while [ ${#uuid} -ne 36 ]; do

subUUID=`openssl rand -base64 20 | sed 's/[^a-zA-Z0-9]//g'`
case ${#uuid} in
0)
    uuid=${subUUID:0:8} ;;
8)
    uuid=$uuid-${subUUID:0:4} ;;
13)
    uuid=$uuid-${subUUID:0:4} ;;
18)
    uuid=$uuid-${subUUID:0:4} ;;
23)
    uuid=$uuid-${subUUID:0:12} ;;
*)
    echo "Invalid length of uuid: ${#uuid}"

esac

done

# echo $uuid

################################################################
## generate public private keys
################################################################


openssl genrsa -out privatekey.pem 2> /dev/null

openssl rsa -pubout -in privatekey.pem -out publickey.pem 2> /dev/null

publickey=`cat publickey.pem`


echo "bundle exec rake mauth:new_security_token[pls_work,'$publickey',$uuid]"
