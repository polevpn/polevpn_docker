#!/bin/sh

trap "echo 'program exit...' && pkill -f 'polevpn_server' && exit 0"  INT QUIT TERM 

./tools/init.sh
./polevpn_server -config=config/config.json -logToStderr &

while true
do
  tail -f /dev/null & wait ${!}
done


