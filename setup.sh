#!/bin/ash
# Installation script by ARYO.

DIR=/usr/bin


finish(){
clear
	echo ""
    echo "INSTALL SUCCESSFULLY ;)"
    echo ""
    echo "Untuk Menjalankan Ketik mhp dan enter di terminal"
    sleep 3
    echo ""
    echo "SALAM SEDULURAN"
    echo ""
    echo ""
}

download_files()
{
    	clear
  	echo "Downloading files from repo ModemHP..."
   	wget -O $DIR/mhp https://raw.githubusercontent.com/aryobrokolly/modepesawat/main/usr/bin/mhp && chmod +x $DIR/mhp
    	wget -O $DIR/modpeshp https://raw.githubusercontent.com/aryobrokolly/modepesawat/main/bled-hgled/modpeshp && chmod +x $DIR/modpeshp
    	finish
}

echo ""
echo "Install Script code from repo aryo."

while true; do
    read -p "This will download the files into $DIR. Do you want to continue (y/n)? " yn
    case $yn in
        [Yy]* ) download_files; break;;
        [Nn]* ) exit;;
        * ) echo "Please answer 'y' or 'n'.";;
    esac
done
