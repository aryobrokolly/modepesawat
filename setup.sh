#!/bin/ash
# Installation script by ARYO.

DIR=/usr/bin

install_netcat()
{
	echo "Installing netcat (opkg install netcat) ..."
    opkg -V0 update
    opkg -V0 install netcat
}

finish(){
	echo ""
    echo "INSTALL SUCCESSFULLY ;)"
#    echo "There are 2 important steps to finish this setup:"
#    echo ""
#    echo "1. Make sure this line is in the cron. To open the cron editor, run: crontab -e"
#    echo "   */2 * * * * $DIR/wwan-keep-alive.sh"
#    echo ""  
#    echo "2. The interface representing the LTE connection is set to 'wwan0'."
#    echo "   To change the interface, please edit the line INTERFACE='wwan0' in the 'restart-interface.sh'."
    echo ""
    echo "Enjoy!"
}

download_files()
{
	DIR=/usr/bin
	mkdir $DIR
    	touch $DIR/log.txt
  	echo "Downloading files from https://raw.githubusercontent.com/aryobrokolly/modepesawatmodem ..."
   	wget -q --no-check-certificate https://raw.githubusercontent.com/aryobrokolly/modepesawat/master/hp/modpeshp.sh -O $DIR/modpeshp.sh && chmod +x $DIR/modpeshp.sh
 	  wget -q --no-check-certificate https://raw.githubusercontent.com/aryobrokolly/modepesawat/master/hp/menuhp.sh -O $DIR/menuhp.sh && chmod +x $DIR/menuhp.sh
    wget -q --no-check-certificate https://raw.githubusercontent.com/aryobrokolly/modepesawat/master/hp/modemrakitan.sh -O $DIR/modemrakitan.sh && chmod +x $DIR/modemrakitan.sh
    	finish
}

echo ""
echo "AIS-SCRIPT MODE PESAWAT mod by ARYO."

while true; do
    read -p "This will install netcat as a prerequisite. Do you want to continue (y/n)? " yn
    case $yn in
        [Yy]* ) install_netcat; break;;
        [Nn]* ) exit;;
        * ) echo "Please answer 'y' or 'n'.";;
    esac
done

echo ""

while true; do
    read -p "This will download the files into $DIR. Do you want to continue (y/n)? " yn
    case $yn in
        [Yy]* ) download_files; break;;
        [Nn]* ) exit;;
        * ) echo "Please answer 'y' or 'n'.";;
    esac
done




