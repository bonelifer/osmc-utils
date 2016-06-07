#!/bin/bash
# KODI
# Parameters:
# UL   - update library
# CL   - clean library
# UAL  - update audio library
# CAL  - clean audio libary
# QUIT - Quit KODI

## Don't edit this
input="$1"

##Edit these
ip="192.168.1.135"
user="kodi"
pass="kodi"
port="8081"

if [ $(echo "$input" |tr [:upper:] [:lower:]) == "ul" ]; then
#Scan New Videos to the Library
curl -i -X POST -d "{\"jsonrpc\": \"2.0\", \"method\": \"VideoLibrary.Scan\", \"id\": \"mybash\"}" -H "content-type:application/json" http://$user:$pass@$ip:$port/jsonrpc

elif [ $(echo "$input" |tr [:upper:] [:lower:]) == "cl" ]; then
#Cleanup the library and remove old missing content
curl -i -X POST -d "{\"jsonrpc\": \"2.0\", \"method\": \"VideoLibrary.Clean\", \"id\": \"mybash\"}" -H "content-type:application/json" http://$user:$pass@$ip:$port/jsonrpc

elif [ $(echo "$input" |tr [:upper:] [:lower:]) == "ual" ]; then
#Scan in New music Albums
curl -i -X POST -d "{\"jsonrpc\": \"2.0\", \"method\": \"AudioLibrary.Scan\", \"id\": \"mybash\"}" -H "content-type:application/json" http://$user:$pass@$ip:$port/jsonrpc

elif [ $(echo "$input" |tr [:upper:] [:lower:]) == "cal" ]; then
#Cleanup and remove missing albums
curl -i -X POST -d "{\"jsonrpc\": \"2.0\", \"method\": \"AudioLibrary.Clean\", \"id\": \"mybash\"}" -H "content-type:application/json" http://$user:$pass@$ip:$port/jsonrpc

elif [ $(echo "$input" |tr [:upper:] [:lower:]) == "quit" ]; then
#Quit KODI
curl -i -X POST -d "{\"jsonrpc\": \"2.0\", \"method\": \"Application.Quit\", \"id\": \"1\"}" -H "content-type:application/json" http://$user:$pass@$ip:$port/jsonrpc

elif [ $(echo "$input" |tr [:upper:] [:lower:]) == "q" ]; then
#Quit KODI
curl -i -X POST -d "{\"jsonrpc\": \"2.0\", \"method\": \"Application.Quit\", \"id\": \"1\"}" -H "content-type:application/json" http://$user:$pass@$ip:$port/jsonrpc

else
  clear
  echo ""
  echo "Please enter a parameter from below to update/clean the video/audio library."
  echo ""
  echo "kodi-update.sh PARAMETER"
  echo ""
  echo "Parameters:"
  echo " UL   - update library"
  echo " CL   - clean library"
  echo " UAL  - update audio library"
  echo " CAL  - clean audio library"
  echo " QUIT or Q - quit KODI"
  echo ""
  
fi
