#!/bin/bash
# xbmc
# Parameters:
# FTVGUIDE   - Run the FTV Guide addon so it updates the XMLTV data in memory from the file
# HOME       - Return to the Kodi home screen

## Don't edit this
input="$1"

##Edit these
ip="192.168.1.135"
user="kodi"
pass="kodi"
port="8081"

if [ $(echo "$input" |tr [:upper:] [:lower:]) == "ftvguide" ]; then
#Scan New Videos to the Library
curl -i -X POST -d "{\"jsonrpc\":\"2.0\",\"method\":\"Addons.ExecuteAddon\",\"params\":{\"addonid\":\"script.ftvguide\",\"wait\":false},\"id\":5}" -H "content-type:application/json" http://$user:$pass@$ip:$port/jsonrpc

elif [ $(echo "$input" |tr [:upper:] [:lower:]) == "home" ]; then
#Cleanup the library and remove old missing content
#curl -i -X POST -d "{\"jsonrpc\":\"2.0\",\"method\":\"Input.Back\",\"params\":{},\"id\":6}" -H "content-type:application/json" http://$user:$pass@$ip:$port/jsonrpc
curl -i -X POST -d "{\"jsonrpc\":\"2.0\",\"method\":\"Input.Back\",\"params\":{},\"id\":6}" -H "content-type:application/json" http://$user:$pass@$ip:$port/jsonrpc

curl -i -X POST -d "{\"jsonrpc\":\"2.0\",\"method\":\"Input.Home\",\"params\":{},\"id\":2}" -H "content-type:application/json" http://$user:$pass@$ip:$port/jsonrpc

else
  clear
  echo ""
  echo "Please enter a parameter from below to update the XMLTV data or Return to"
  echo "the Kodi Home Screen."
  echo ""
  echo "ftvguide-update.sh PARAMETER"
  echo ""
  echo "PARAMETERS are NOT case sensitive"
  echo ""
  echo "Parameters:"
  echo " FTVGUIDE   - Run the FTV Guide addon so it updates the XMLTV data in memory from the file"
  echo " HOME       - Return to the Kodi home screen"
  echo ""
  
fi
