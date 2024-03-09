# SCRIPT AUTO GANTI IP MODEM RAKITAN DAN HP

# TESTED
- ***Modem Dell DW5821E***
- ***HP Samsung***

# Cara Install dan petunjuk penggunaan
- Run installation script:
```
bash -c "$(wget -qO - 'https://raw.githubusercontent.com/aryobrokolly/modepesawat/master/setup.sh')"
```

Unduh bled (B860H v1/v2)
```
rm -f /usr/bin/bled wget -O /usr/bin/bled https://raw.githubusercontent.com/aryobrokolly/menghilink/main/bled-hgled/bled && chmod +x /usr/bin/bled
```

Unduh hgled (HG680-P Ram 2GB)
```
rm -f /usr/bin/hgled wget -O /usr/bin/hgled https://raw.githubusercontent.com/aryobrokolly/menghilink/main/bled-hgled/hgled && chmod +x /usr/bin/hgled
```
# Petunjuk penggunaan
  ***MODEM HP***
- ketik ***modemhp*** di terminal
  <br>***Untuk menggunakan menu modemhp, hpmu wajib usb debugging aktif***
- pilih perintah berupa angka sesuai petunjuk yang tampil di terminal openwrt mu


***MODEM RAKITAN***
- ketik modemrakitan pada terminal
  <br>***untuk menjalankan perintah secara manual***
- untuk menjalankan mode pesawat otomatis pada openwrt bisa menggunakan bled (b860h) atau hgled (hg680p)
- atau bisa menggunakan conn monitor pada stb-reyre


# Thank to
- ais sia
- helmiarimbawa
- Script code
