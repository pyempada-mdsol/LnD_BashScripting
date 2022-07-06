#!/bin/bash
echo "what is the name of app for the token?"
read appName


#updated this code for make it simple approach
#because the old approach is not universally unique random it is mostly server specific unique

newuuid=`curl -X GET https://www.uuidtools.com/api/generate/v1` 2> /dev/null
uuid=`echo $newuuid | sed 's/[^a-zA-Z0-9-]//g'1` 

echo $uuid



# while [ ${#uuid} -ne 36 ]; do

# subUUID=`openssl rand -base64 20 | sed 's/[^a-zA-Z0-9]//g'`
# case ${#uuid} in
# 0)
#     uuid=${subUUID:0:8} ;;
# 8)
#     uuid=$uuid-${subUUID:0:4} ;;
# 13)
#     uuid=$uuid-${subUUID:0:4} ;;
# 18)
#     uuid=$uuid-${subUUID:0:4} ;;
# 23)
#     uuid=$uuid-${subUUID:0:12} ;;
# *)
#     echo "Invalid length of uuid: ${#uuid}"

# esac

# done

# echo $uuid

################################################################
## generate public private keys
################################################################


openssl genrsa -out privatekey_$appName.pem 2> /dev/null

openssl rsa -pubout -in privatekey_$appName.pem -out publickey_$appName.pem 2> /dev/null

publickey=`cat publickey_${appName}.pem`


echo "bundle exec rake mauth:new_security_token[$appName,'$publickey',$uuid]"
