echo AT+CFUN=4 | atinout - /dev/ttyUSB1 - &&
ifdown wan && sleep 3
echo AT+CFUN=1 | atinout - /dev/ttyUSB1 - &&
sleep 3 && ifup wan
