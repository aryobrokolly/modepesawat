#!/bin/ash
# Installation script by ARYO.

DIR=/usr/bin

install_netcat()
{
	echo "Update (opkg update) ..."
    opkg -V0 update
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
  	echo "Downloading files from https://raw.githubusercontent.com/aryobrokolly/modepesawat ..."
   	wget -q --no-check-certificate https://raw.githubusercontent.com/aryobrokolly/modepesawat/master/modpeshp -O $DIR/modpeshp && chmod +x $DIR/modpeshp
 	wget -q --no-check-certificate https://raw.githubusercontent.com/aryobrokolly/modepesawat/master/menuhp -O $DIR/menuhp && chmod +x $DIR/menuhp
    	wget -q --no-check-certificate https://raw.githubusercontent.com/aryobrokolly/modepesawat/master/modemrakitan -O $DIR/modemrakitan && chmod +x $DIR/modemrakitan
    	finish
}

echo ""
echo "Aryo Install Script code."

while true; do
    read -p "This will update as a prerequisite. Do you want to continue (y/n)? " yn
    case $yn in
        [Yy]* ) install_netcat; break;;
        [Nn]* ) exit;;
        * ) echo "Please answer 'y' or 'n'.";;
    esac
done

echo ""

while true; do
    read -p "This will download the files ais sia into $DIR. Do you want to continue (y/n)? " yn
    case $yn in
        [Yy]* ) download_files; break;;
        [Nn]* ) exit;;
        * ) echo "Please answer 'y' or 'n'.";;
    esac
done




