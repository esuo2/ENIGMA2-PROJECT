#!/bin/sh

#opkg update && opkg upgrade opkg install --force-depends --force-overwrite --force-downgrade p7zip opkg install wget opkg install python-imaging opkg install python-lxml opkg install python-requests opkg install python-pycrypto opkg install curl opkg install openvpn opkg install kodi-addon-pvr-iptvsimple opkg install livestreamer install livestreamersrv opkg install enigma2-plugin-systemplugins-serviceapp opkg install ffmpeg opkg install exteplayer3 opkg install gstplayer opkg update opkg install gstreamer1.0-plugins-good gstreamer1.0-plugins-base gstreamer1.0-plugins-bad gstreamer1.0-plugins-ugly

if python --version 2>&1 | grep -q '^Python 3\.'; then
   echo "You have Python3 image"
   PYTHON='PY3'
else
   echo "You have Python2 image"
   PYTHON='PY2'
fi

if [ $PYTHON = "PY3" ]; then    
    opkg update
	opkg remove --force-depends enigma2-plugin-systemplugins-positionersetup
	opkg remove --force-depends enigma2-plugin-systemplugins-videoenhancement
	opkg remove --force-depends enigma2-plugin-extensions-atilehd
	opkg remove --force-depends enigma2-plugin-extensions-autotimer
	opkg remove --force-depends enigma2-plugin-extensions-cutlisteditor
	opkg remove --force-depends enigma2-plugin-extensions-dvdplayer
	opkg remove --force-depends enigma2-plugin-extensions-enhancedmoviecenter
	opkg remove --force-depends enigma2-plugin-extensions-filecommander
	opkg remove --force-depends enigma2-plugin-extensions-pictureplayer
	opkg remove --force-depends enigma2-plugin-extensions-programmlistenupdater
	opkg remove --force-depends enigma2-plugin-extensions-volume-adjust
	opkg remove --force-depends enigma2-plugin-extensions-chromium
	opkg remove --force-depends enigma2-locale-{ar,bg,ca,cs,da,de,el,en,es,et,fa,fi,fr,fy,he,hr,hu,id,is,it,ku,lt,lv,nb,nl,no,pl,pt,pt-br,ro,ru,sk,sl,sr,sv,th,tr,uk,vi,zh-cn,zh-hk}
	opkg install iperf3
    opkg install python3-beautifulsoup4
	opkg install streamlinksrv
    opkg install python3-typing
    opkg install enigma2-plugin-extensions-webkithbbtv
    opkg install enigma2-plugin-extensions-imdb
    opkg install enigma2-plugin-extensions-oaweather
    opkg install enigma2-plugin-extensions-openatvstatus
    opkg install enigma2-plugin-extensions-tmdb
	opkg install enigma2-plugin-extensions-streamlinkwrapper
	opkg install enigma2-plugin-extensions-chromium2
	opkg install enigma2-plugin-extensions-ytdlpwrapper
	opkg install enigma2-plugin-extensions-ytdlwrapper
	opkg install python3-html5lib
	opkg install python3-plistlib
    opkg install python3-requests
    opkg install python3-imaging
    opkg install python3-lxml
	opkg install python3-six
	opkg install python3-pillow
    opkg install python3-pycrypto
    opkg install python3-multiprocessing
    opkg install python3-pyexecjs
    opkg install python3-youtube-dl
    opkg install python3-yt-dlp
    opkg install streamlink
    opkg install p7zip
    opkg install wget
	opkg install enigma2-plugin-extensions-cacheflush
	opkg install enigma2-plugin-extensions-clearmem
	opkg install dvbsnoop
	opkg install tsduck
	opkg install kernel-module-belkin-sa
    opkg install kernel-module-ftdi-sio
    opkg install kernel-module-keyspan
    opkg install kernel-module-pl2303
    opkg install kernel-module-usbseria    
	opkg install dvbnet
    opkg install udpxy 
    opkg install tcpdump
    opkg install perl
    opkg install perl-module-getopt-std
    opkg install perl-module-file-basename
    opkg install perl-module-utf8
    opkg install perl-module-encode
    opkg install htop
	opkg install dabstreamer 
    opkg install eti-tools 
	opkg install enigma2-plugin-extensions-webadmin
	opkg install enigma2-plugin-extensions-epgimport
    opkg install python3-requests 
    opkg install python3-imaging 
    opkg install python3-lxml
    opkg install python3-tmdbsimple  
    opkg install python3-pycrypto 
    opkg install curl
    opkg install openvpn
    #opkg install enigma2-plugin-extensions-kodi kodi-addon-pvr-vuplus
    #opkg install kodi-addon-pvr-iptvsimple
    opkg install python3-lzma 
    opkg install rtmpdump
    opkg install hlsdl 
    opkg install duktape
    opkg install f4mdump 
    opkg install astra-sm
    opkg install livestreamer 
    opkg install livestreamersrv
    opkg install enigma2-plugin-systemplugins-serviceapp
	opkg install enigma2-plugin-extensions-e2iplayer-deps
    opkg install ffmpeg
    opkg install exteplayer3
    opkg install gstplayer
    opkg install gstreamer1.0-plugins-good
    opkg install gstreamer1.0-plugins-ugly
    opkg install gstreamer1.0-plugins-base
    opkg install gstreamer1.0-plugins-bad
	opkg install libgstplayer-1.0-0
	opkg install python3-beautifulsoup4
	opkg install python3-requests 
	opkg install python3-sqlite3 
	opkg install python3-codecs 
	opkg install python3-core 
	opkg install python3-json 
	opkg install python3-netclient 
	opkg install python3-image
	opkg install util-linux-rename
	opkg install enigma2-plugin-skins-metrix-atv-fhd-icons
	#opkg install enigma2-plugin-skins-kiddac-1080-onyx
	#opkg install enigma2-plugin-skins-kiddac-1080-slyk-q
	#opkg install enigma2-plugin-skins-kiddac-1080-slyk-r19
	
    sleep 2
    init 4; sleep 5; init 3
    #wget -q "--no-check-certificate" http://ipkinstall.ath.cx/ipk-install/DreamSatPanel/installer.sh  -O - | /bin/sh
	#wget http://plugins.boxpirates.dynvpn.de/boxpiratespanel-ipk-installer.sh -O - | /bin/sh
	#wget http://tropical.jungle-team.online/script/jungle-feed.conf -P /etc/opkg/
	#wget https://raw.githubusercontent.com/biko-73/TheWeather/main/installer.sh -O - | /bin/sh
	#wget https://raw.githubusercontent.com/tarekzoka/SKINS/main/beta.sh -O - | /bin/sh
	#wget https://raw.githubusercontent.com/biko-73/zelda77/main/installer.sh -O - | /bin/sh
	#wget http://updates.mynonpublic.com/oea/feed -qO - | /bin/sh
	python -c "$(wget https://raw.githubusercontent.com/MOHAMED19OS/e2script/main/e2script.py -qO -)"
    wget https://raw.githubusercontent.com/fairbird/KeyAdder/main/installer.sh -O - | /bin/sh
    wget -q "--no-check-certificate" https://github.com/digiteng/xtra/raw/main/xtraEvent.sh -O - | /bin/sh
    wget "--no-check-certificate" https://raw.githubusercontent.com/fairbird/RaedQuickSignal/main/installer.sh -O - | /bin/sh
    wget https://raw.githubusercontent.com/fairbird/NewVirtualKeyBoard/main/installer.sh -O - | /bin/sh
    #opkg install https://github.com/oottppxx/enigma2/raw/master/plugins/budweiser/enigma2-plugin-extensions-budweiser-6.2.3t.ipk
	#opkg install https://github.com/esuo2/ipks/raw/main/enigma2-plugin-extensions-opkg-tools_1.4_all.ipk
	#opkg install https://github.com/oottppxx/enigma2/raw/master/plugins/quarterpounder/enigma2-plugin-extensions-quarterpounder-6.2.0u.ipk
	#opkg install https://github.com/esuo2/ipks/raw/main/enigma2-plugin-skins-metrixfhd-neo_reboot-v3_all.ipk
	#opkg install https://github.com/esuo2/ipks/raw/main/enigma2-plugin-extensions-screennames_1.03.20221106_all.ipk
	#opkg install https://github.com/esuo2/ipks/raw/main/enigma2-plugin-extensions-visualweather_1.05.20221024_all.ipk
	#opkg install https://github.com/esuo2/ipks/raw/main/enigma2-plugin-skincomponents-kiddac-shared-skin_1.10_all.ipk
	#opkg install https://github.com/esuo2/ipks/raw/main/enigma2-plugin-skins-slyk1080r19_2.21.20220323_all.ipk
	#opkg install https://github.com/esuo2/ipks/raw/main/enigma2-plugin-skins-slyk-q-1080_1.35.20220323_all.ipk
	#opkg install https://github.com/esuo2/ipks/raw/main/enigma2-plugin-skins-slyk-onyx-1080_2.33.20220323_all.ipk
	#opkg install https://github.com/esuo2/ipks/raw/main/enigma2-plugin-extensions-movieplannermod_4.02.20211228_all.ipk
	#opkg install https://github.com/esuo2/ipks/raw/main/enigma2-plugin-extensions-openatv-epgselection-mod_3.1_all.ipk
	#opkg install https://github.com/esuo2/ipks/raw/main/enigma2-plugin-skins-slyk-toppicks_6.0.20200711_all.ipk
	#opkg install https://github.com/esuo2/ipks/raw/main/enigma2-plugin-extensions-e2m3u2bouquet_1.0.74_all.ipk
	#opkg install https://github.com/esuo2/ipks/raw/main/enigma2-plugin-extensions-bissfeed-autokey-py3_2.8_all.ipk
	#opkg install https://github.com/esuo2/ipks/raw/main/enigma2-plugin-extensions-feeds-finder-py3_1.6_all.ipk
	#opkg install https://github.com/esuo2/ipks/raw/main/enigma2-plugin-extensions-freearhey_2.6_all.ipk
	#opkg install https://github.com/esuo2/ipks/raw/main/enigma2-plugin-extensions-hbbtv_git8507+077f312-r0_mips32el.ipk
	#opkg install https://github.com/esuo2/ipks/raw/main/enigma2-plugin-extensions-plutotv_20220728_all.ipk
	#opkg install https://github.com/esuo2/ipks/raw/main/enigma2-plugin-extensions-streamlink_v.2.9_all.ipk
	#opkg install https://github.com/esuo2/ipks/raw/main/enigma2-plugin-extensions-tvaddon_2.0.8_all.ipk
	#opkg install https://github.com/esuo2/ipks/raw/main/enigma2-plugin-extensions-tvtom3u_1.6_all.ipk
	#opkg install https://github.com/esuo2/ipks/raw/main/enigma2-plugin-extensions-weather_msn_0.5-r5_all.ipk
	#opkg install https://github.com/esuo2/ipks/raw/main/enigma2-plugin-extensions-worldcam_4.2_r5_all.ipk
	#opkg install https://github.com/esuo2/ipks/raw/main/enigma2-plugin-extensions-EPGImport-mod-dorik1972_1.9.1_all.ipk
	#wget -q "--no-check-certificate" https://raw.githubusercontent.com/biko-73/NitroAdvanceFHD/main/installer.sh -O - | /bin/sh
	#opkg install enigma2-plugin-extensions-junglebot
	#wget https://raw.githubusercontent.com/MOHAMED19OS/Download/main/NovalerTV/installer.py -qO - | python",
    #wget https://raw.githubusercontent.com/MOHAMED19OS/Download/main/Quran/installer.sh -qO - | /bin/sh",
    #wget https://raw.githubusercontent.com/biko-73/AjPanel/main/installer.sh -qO - | /bin/sh",
    #wget https://raw.githubusercontent.com/fairbird/ArabicSavior/main/installer.sh -qO - | /bin/sh",
    #wget https://raw.githubusercontent.com/MOHAMED19OS/Download/main/YouTube/installer.sh -qO - | /bin/sh",
    #wget https://raw.githubusercontent.com/MOHAMED19OS/Download/main/IPtoSAT/installer.sh -qO - | /bin/sh",
    #wget https://raw.githubusercontent.com/MOHAMED19OS/Download/main/E2IPLAYER_TSiplayer/installer.sh -qO - | /bin/sh",
    #wget https://raw.githubusercontent.com/MOHAMED19OS/Download/main/Suptv/installer.sh -qO - | /bin/sh",
    #wget https://raw.githubusercontent.com/ziko-ZR1/Multi-Stalker-install/main/Downloads/installer.sh -qO - | /bin/sh",
    #wget https://raw.githubusercontent.com/fairbird/RaedQuickSignal/main/installer.sh  -qO - | /bin/sh",
    #wget http://ipkinstall.ath.cx/ipaudio/installer.sh -qO - | /bin/sh",
    #wget https://raw.githubusercontent.com/fairbird/KeyAdder/main/installer.sh -qO - | /bin/sh",
    #wget https://raw.githubusercontent.com/ziko-ZR1/FootOnsat/main/Download/install.sh -qO - | /bin/sh",
    #wget https://raw.githubusercontent.com/fairbird/NewVirtualKeyBoard/main/installer.sh -qO - | /bin/sh",
    #wget https://raw.githubusercontent.com/ziko-ZR1/Epg-plugin/master/Download/installer.sh -qO - | /bin/sh",
    #wget -q https://raw.githubusercontent.com/MOHAMED19OS/Download/main/Emu/installer.py; python installer.py && rm -rf $(pwd)/installer.py*",
    #wget https://raw.githubusercontent.com/gutosie/neoboot/master/iNB.sh -qO - | /bin/sh",
    #wget https://raw.githubusercontent.com/MOHAMED19OS/Download/main/FlashOnline/installer.py -qO - | python",
    #wget https://github.com/digiteng/xtra/raw/main/xtraEvent.sh -qO - | /bin/sh",
    #wget http://ipkinstall.ath.cx/ipk-install/DreamSatPanel/installer.sh  -qO - | /bin/sh",
    #wget https://raw.githubusercontent.com/biko-73/JediMakerXtream/main/installer.sh -qO - | /bin/sh",
    #wget https://raw.githubusercontent.com/biko-73/xstreamity/main/installer.sh -qO - | /bin/sh",
    #wget https://raw.githubusercontent.com/MOHAMED19OS/Download/main/XC-Code/installer.sh -qO - | /bin/sh",
    #wget https://raw.githubusercontent.com/biko-73/openmultiboot/main/installer.sh -qO - | /bin/sh",
    #wget https://raw.githubusercontent.com/biko-73/SubsSupport/main/installer.sh -qO - | /bin/sh",
    #wget https://raw.githubusercontent.com/fairbird/backupflash/main/installer.sh -qO - | /bin/sh",
    #wget https://raw.githubusercontent.com/MOHAMED19OS/Download/main/HasBahCa/installer.sh -qO - | /bin/sh",
    #wget https://raw.githubusercontent.com/MOHAMED19OS/Download/main/Channel/installer.py -qO - | python",
    #wget http://nordvpnconnector.dd-dns.de/nvpnc-installer_ipk.sh -qO - | /bin/sh",
    #wget https://github.com/s3n0/e2plugins/raw/master/ChocholousekPicons/online-setup -qO - | bash -s install",
    #wget http://tunisia-dreambox.info/TSplugins/openWebif/installer.sh -qO - | /bin/sh",
    #wget https://raw.githubusercontent.com/MOHAMED19OS/Download/main/NovCam/installer.py -qO - | python"
	#wget https://raw.githubusercontent.com/MOHAMED19OS/Download/main/FlashOnline/installer.py -qO - | python
	#wget https://raw.githubusercontent.com/MOHAMED19OS/Download/main/XC-Code/installer.sh -qO - | /bin/sh
	#wget https://raw.githubusercontent.com/MOHAMED19OS/Download/main/YouTube/installer.sh -qO - | /bin/sh
	#wget https://raw.githubusercontent.com/biko-73/SubsSupport/main/installer.sh -qO - | /bin/sh
	#wget https://raw.githubusercontent.com/MOHAMED19OS/Download/main/IPtoSAT/installer.sh -qO - | /bin/sh
	#wget https://raw.githubusercontent.com/MOHAMED19OS/Download/main/Suptv/installer.sh -qO - | /bin/sh
	#wget https://raw.githubusercontent.com/ziko-ZR1/Multi-Stalker-install/main/Downloads/installer.sh -qO - | /bin/sh
	#wget https://raw.githubusercontent.com/biko-73/AjPanel/main/installer.sh -qO - | /bin/sh
	#wget https://github.com/digiteng/xtra/raw/main/xtraEvent.sh -qO - | /bin/sh
	#wget https://raw.githubusercontent.com/ziko-ZR1/FootOnsat/main/Download/install.sh -qO - | /bin/sh
	#wget http://ipkinstall.ath.cx/ipaudio/installer.sh -qO - | /bin/sh
	#wget https://raw.githubusercontent.com/MOHAMED19OS/Download/main/IPTVPlayer/installer.sh -qO - | /bin/sh
	#wget https://raw.githubusercontent.com/ziko-ZR1/Epg-plugin/master/Download/installer.sh -qO - | /bin/sh
	#wget https://raw.githubusercontent.com/fairbird/RaedQuickSignal/main/installer.sh -O - | /bin/sh
	#wget http://tunisia-dreambox.info/TSplugins/AddKey/installer.sh -qO - | /bin/sh
	#wget https://raw.githubusercontent.com/biko-73/JediMakerXtream/main/installer.sh -qO - | /bin/sh
	#wget https://raw.githubusercontent.com/biko-73/xstreamity/main/installer.sh -qO - | /bin/sh
	#wget http://tunisia-dreambox.info/TSplugins/NewVirtualKeyBoard/installer.sh -qO - | /bin/sh
	#wget https://raw.githubusercontent.com/biko-73/openmultiboot/main/installer.sh -qO - | /bin/sh
	#wget https://raw.githubusercontent.com/gutosie/neoboot/master/iNB.sh -qO - | /bin/sh
	#wget http://tunisia-dreambox.info/TSplugins/backupflash/installer.sh -qO - | /bin/sh
	#wget https://github.com/s3n0/e2plugins/raw/master/ChocholousekPicons/online-setup -qO - | bash -s install
	#wget https://raw.githubusercontent.com/biko-73/TheWeather/main/installer.sh -O - | /bin/sh
	#wget https://raw.githubusercontent.com/MOHAMED19OS/Download/main/HasBahCa/installer.sh -qO - | /bin/sh
	#wget https://raw.githubusercontent.com/sivel/speedtest-cli/master/speedtest.py -qO - | python
	
else 
    opkg update
	opkg remove --force-depends enigma2-plugin-systemplugins-positionersetup
	opkg remove --force-depends enigma2-plugin-systemplugins-videoenhancement
	opkg remove --force-depends enigma2-plugin-extensions-atilehd
	opkg remove --force-depends enigma2-plugin-extensions-autotimer
	opkg remove --force-depends enigma2-plugin-extensions-cutlisteditor
	opkg remove --force-depends enigma2-plugin-extensions-dvdplayer
	opkg remove --force-depends enigma2-plugin-extensions-enhancedmoviecenter
	opkg remove --force-depends enigma2-plugin-extensions-filecommander
	opkg remove --force-depends enigma2-plugin-extensions-pictureplayer
	opkg remove --force-depends enigma2-plugin-extensions-programmlistenupdater
	opkg remove --force-depends enigma2-plugin-extensions-volume-adjust
	opkg remove --force-depends enigma2-plugin-extensions-chromium
	opkg remove --force-depends enigma2-locale-{ar,bg,ca,cs,da,de,el,en,es,et,fa,fi,fr,fy,he,hr,hu,id,is,it,ku,lt,lv,nb,nl,no,pl,pt,pt-br,ro,ru,sk,sl,sr,sv,th,tr,uk,vi,zh-cn,zh-hk}
    opkg install p7zip
    opkg install wget
	opkg install dvbsnoop
	opkg install tsduck
	opkg install kernel-module-belkin-sa
    opkg install kernel-module-ftdi-sio
    opkg install kernel-module-keyspan
    opkg install kernel-module-pl2303
    opkg install kernel-module-usbseria
	opkg install dvbnet
    opkg install udpxy
    opkg install tcpdump
    opkg install perl
    opkg install perl-module-getopt-std
    opkg install perl-module-file-basename
    opkg install perl-module-utf8
    opkg install perl-module-encode
    opkg install htop
	opkg install dabstreamer
    opkg install eti-tools
	#opkg install enigma2-plugin-extensions-webadmin
	opkg install enigma2-plugin-extensions-epgimport
    opkg install python-requests
	opkg install boxbranding.so
    opkg install nodejs
	opkg install python-dnspython
    opkg install python-numbers
	opkg install python-image
	opkg install python-imaging
	opkg install python-six
    opkg install python-simplejson
    opkg install python-imaging
    opkg install python-lxml
    opkg install python-pycrypto
    opkg install curl
    opkg install python-multiprocessing
    opkg install openvpn
	#opkg install enigma2-plugin-extensions-kodi kodi-addon-pvr-vuplus
    #opkg install kodi-addon-pvr-iptvsimple
    opkg install python-lzma
    opkg install rtmpdump
    opkg install hlsdl
    opkg install duktape
    opkg install f4mdump
    opkg install astra-sm
    opkg install livestreamer
    opkg install livestreamersrv
    opkg install python-pyexecjs
    opkg install enigma2-plugin-systemplugins-serviceapp
	opkg install enigma2-plugin-extensions-e2iplayer-deps
    opkg install ffmpeg
    opkg install exteplayer3
    opkg install gstplayer
    opkg install gstreamer1.0-plugins-good
    opkg install gstreamer1.0-plugins-ugly
    opkg install gstreamer1.0-plugins-base
    opkg install gstreamer1.0-plugins-bad
	opkg install libgstplayer-1.0-0
	opkg install python-beautifulsoup4
	opkg install python-requests
	opkg install python-sqlite3
	opkg install python-codecs
	opkg install python-core
	opkg install python-json
	opkg install python-netclient
	opkg install python-image
	opkg install util-linux-rename
	#opkg install enigma2-plugin-extensions-opkg-tools
	#opkg install enigma2-plugin-skins-metrix-atv-fhd-icons
	#opkg install enigma2-plugin-skins-kiddac-1080-onyx
	#opkg install enigma2-plugin-skins-kiddac-1080-slyk-q
	#opkg install enigma2-plugin-skins-kiddac-1080-slyk-r19
    sleep 2
    init 4; sleep 5; init 3
    #wget -q "--no-check-certificate" http://ipkinstall.ath.cx/ipk-install/DreamSatPanel/installer.sh  -O - | /bin/sh
	#wget http://plugins.boxpirates.dynvpn.de/boxpiratespanel-ipk-installer.sh -O - | /bin/sh
	#wget http://tropical.jungle-team.online/script/jungle-feed.conf -P /etc/opkg/
	#wget https://raw.githubusercontent.com/biko-73/TheWeather/main/installer.sh -O - | /bin/sh
	#wget https://raw.githubusercontent.com/tarekzoka/SKINS/main/beta.sh -O - | /bin/sh
	#wget https://raw.githubusercontent.com/biko-73/zelda77/main/installer.sh -O - | /bin/sh
	#wget http://updates.mynonpublic.com/oea/feed -qO - | /bin/sh
	python -c "$(wget https://raw.githubusercontent.com/MOHAMED19OS/e2script/main/e2script.py -qO -)"
    #opkg install https://github.com/oottppxx/enigma2/raw/master/plugins/budweiser/enigma2-plugin-extensions-budweiser-6.2.3t.ipk
	#opkg install https://github.com/oottppxx/enigma2/raw/master/plugins/quarterpounder/enigma2-plugin-extensions-quarterpounder-6.2.0u.ipk
	#opkg install https://github.com/esuo2/ipks/raw/main/enigma2-plugin-skins-metrixfhd-neo_reboot-v3_all.ipk
	#opkg install https://github.com/esuo2/ipks/raw/main/enigma2-plugin-extensions-screennames_1.03.20221106_all.ipk
	#opkg install https://github.com/esuo2/ipks/raw/main/enigma2-plugin-extensions-visualweather_1.05.20221024_all.ipk
	#opkg install https://github.com/esuo2/ipks/raw/main/enigma2-plugin-skincomponents-kiddac-shared-skin_1.10_all.ipk
	#opkg install https://github.com/esuo2/ipks/raw/main/enigma2-plugin-skins-slyk1080r19_2.21.20220323_all.ipk
	#opkg install https://github.com/esuo2/ipks/raw/main/enigma2-plugin-skins-slyk-q-1080_1.35.20220323_all.ipk
	#opkg install https://github.com/esuo2/ipks/raw/main/enigma2-plugin-skins-slyk-onyx-1080_2.33.20220323_all.ipk
	#opkg install https://github.com/esuo2/ipks/raw/main/enigma2-plugin-extensions-movieplannermod_4.02.20211228_all.ipk
	#opkg install https://github.com/esuo2/ipks/raw/main/enigma2-plugin-extensions-openatv-epgselection-mod_3.1_all.ipk
	#opkg install https://github.com/esuo2/ipks/raw/main/enigma2-plugin-skins-slyk-toppicks_6.0.20200711_all.ipk
	#opkg install https://github.com/esuo2/ipks/raw/main/enigma2-plugin-extensions-e2m3u2bouquet_1.0.74_all.ipk
	#opkg install https://github.com/esuo2/ipks/raw/main/enigma2-plugin-extensions-bissfeed-autokey-py3_2.8_all.ipk
	#opkg install https://github.com/esuo2/ipks/raw/main/enigma2-plugin-extensions-feeds-finder-py3_1.6_all.ipk
	#opkg install https://github.com/esuo2/ipks/raw/main/enigma2-plugin-extensions-freearhey_2.6_all.ipk
	#opkg install https://github.com/esuo2/ipks/raw/main/enigma2-plugin-extensions-hbbtv_git8507+077f312-r0_mips32el.ipk
	#opkg install https://github.com/esuo2/ipks/raw/main/enigma2-plugin-extensions-plutotv_20220728_all.ipk
	#opkg install https://github.com/esuo2/ipks/raw/main/enigma2-plugin-extensions-streamlink_v.2.9_all.ipk
	#opkg install https://github.com/esuo2/ipks/raw/main/enigma2-plugin-extensions-tvaddon_2.0.8_all.ipk
	#opkg install https://github.com/esuo2/ipks/raw/main/enigma2-plugin-extensions-tvtom3u_1.6_all.ipk
	#opkg install https://github.com/esuo2/ipks/raw/main/enigma2-plugin-extensions-weather_msn_0.5-r5_all.ipk
	#opkg install https://github.com/esuo2/ipks/raw/main/enigma2-plugin-extensions-worldcam_4.2_r5_all.ipk
	#opkg install https://github.com/esuo2/ipks/raw/main/enigma2-plugin-extensions-EPGImport-mod-dorik1972_1.9.1_all.ipk
	#wget -q "--no-check-certificate" https://raw.githubusercontent.com/biko-73/NitroAdvanceFHD/main/installer.sh -O - | /bin/sh
	#opkg install enigma2-plugin-extensions-junglebot
	#wget https://raw.githubusercontent.com/MOHAMED19OS/Download/main/NovalerTV/installer.py -qO - | python",
    #wget https://raw.githubusercontent.com/MOHAMED19OS/Download/main/Quran/installer.sh -qO - | /bin/sh",
    #wget https://raw.githubusercontent.com/biko-73/AjPanel/main/installer.sh -qO - | /bin/sh",
    #wget https://raw.githubusercontent.com/fairbird/ArabicSavior/main/installer.sh -qO - | /bin/sh",
    #wget https://raw.githubusercontent.com/MOHAMED19OS/Download/main/YouTube/installer.sh -qO - | /bin/sh",
    #wget https://raw.githubusercontent.com/MOHAMED19OS/Download/main/IPtoSAT/installer.sh -qO - | /bin/sh",
    #wget https://raw.githubusercontent.com/MOHAMED19OS/Download/main/E2IPLAYER_TSiplayer/installer.sh -qO - | /bin/sh",
    #wget https://raw.githubusercontent.com/MOHAMED19OS/Download/main/Suptv/installer.sh -qO - | /bin/sh",
    #wget https://raw.githubusercontent.com/ziko-ZR1/Multi-Stalker-install/main/Downloads/installer.sh -qO - | /bin/sh",
    #wget https://raw.githubusercontent.com/fairbird/RaedQuickSignal/main/installer.sh  -qO - | /bin/sh",
    #wget http://ipkinstall.ath.cx/ipaudio/installer.sh -qO - | /bin/sh",
    #wget https://raw.githubusercontent.com/fairbird/KeyAdder/main/installer.sh -qO - | /bin/sh",
    #wget https://raw.githubusercontent.com/ziko-ZR1/FootOnsat/main/Download/install.sh -qO - | /bin/sh",
    #wget https://raw.githubusercontent.com/fairbird/NewVirtualKeyBoard/main/installer.sh -qO - | /bin/sh",
    #wget https://raw.githubusercontent.com/ziko-ZR1/Epg-plugin/master/Download/installer.sh -qO - | /bin/sh",
    #wget -q https://raw.githubusercontent.com/MOHAMED19OS/Download/main/Emu/installer.py; python installer.py && rm -rf $(pwd)/installer.py*",
    #wget https://raw.githubusercontent.com/gutosie/neoboot/master/iNB.sh -qO - | /bin/sh",
    #wget https://raw.githubusercontent.com/MOHAMED19OS/Download/main/FlashOnline/installer.py -qO - | python",
    #wget https://github.com/digiteng/xtra/raw/main/xtraEvent.sh -qO - | /bin/sh",
    #wget http://ipkinstall.ath.cx/ipk-install/DreamSatPanel/installer.sh  -qO - | /bin/sh",
    #wget https://raw.githubusercontent.com/biko-73/JediMakerXtream/main/installer.sh -qO - | /bin/sh",
    #wget https://raw.githubusercontent.com/biko-73/xstreamity/main/installer.sh -qO - | /bin/sh",
    #wget https://raw.githubusercontent.com/MOHAMED19OS/Download/main/XC-Code/installer.sh -qO - | /bin/sh",
    #wget https://raw.githubusercontent.com/biko-73/openmultiboot/main/installer.sh -qO - | /bin/sh",
    #wget https://raw.githubusercontent.com/biko-73/SubsSupport/main/installer.sh -qO - | /bin/sh",
    #wget https://raw.githubusercontent.com/fairbird/backupflash/main/installer.sh -qO - | /bin/sh",
    #wget https://raw.githubusercontent.com/MOHAMED19OS/Download/main/HasBahCa/installer.sh -qO - | /bin/sh",
    #wget https://raw.githubusercontent.com/MOHAMED19OS/Download/main/Channel/installer.py -qO - | python",
    #wget http://nordvpnconnector.dd-dns.de/nvpnc-installer_ipk.sh -qO - | /bin/sh",
    #wget https://github.com/s3n0/e2plugins/raw/master/ChocholousekPicons/online-setup -qO - | bash -s install",
    #wget http://tunisia-dreambox.info/TSplugins/openWebif/installer.sh -qO - | /bin/sh",
    #wget https://raw.githubusercontent.com/MOHAMED19OS/Download/main/NovCam/installer.py -qO - | python"
	#wget https://raw.githubusercontent.com/MOHAMED19OS/Download/main/FlashOnline/installer.py -qO - | python
	#wget https://raw.githubusercontent.com/MOHAMED19OS/Download/main/XC-Code/installer.sh -qO - | /bin/sh
	#wget https://raw.githubusercontent.com/MOHAMED19OS/Download/main/YouTube/installer.sh -qO - | /bin/sh
	#wget https://raw.githubusercontent.com/biko-73/SubsSupport/main/installer.sh -qO - | /bin/sh
	#wget https://raw.githubusercontent.com/MOHAMED19OS/Download/main/IPtoSAT/installer.sh -qO - | /bin/sh
	#wget https://raw.githubusercontent.com/MOHAMED19OS/Download/main/Suptv/installer.sh -qO - | /bin/sh
	#wget https://raw.githubusercontent.com/ziko-ZR1/Multi-Stalker-install/main/Downloads/installer.sh -qO - | /bin/sh
	#wget https://raw.githubusercontent.com/biko-73/AjPanel/main/installer.sh -qO - | /bin/sh
	#wget https://github.com/digiteng/xtra/raw/main/xtraEvent.sh -qO - | /bin/sh
	#wget https://raw.githubusercontent.com/ziko-ZR1/FootOnsat/main/Download/install.sh -qO - | /bin/sh
	#wget http://ipkinstall.ath.cx/ipaudio/installer.sh -qO - | /bin/sh
	#wget https://raw.githubusercontent.com/MOHAMED19OS/Download/main/IPTVPlayer/installer.sh -qO - | /bin/sh
	#wget https://raw.githubusercontent.com/ziko-ZR1/Epg-plugin/master/Download/installer.sh -qO - | /bin/sh
	#wget https://raw.githubusercontent.com/fairbird/RaedQuickSignal/main/installer.sh -O - | /bin/sh
	#wget http://tunisia-dreambox.info/TSplugins/AddKey/installer.sh -qO - | /bin/sh
	#wget https://raw.githubusercontent.com/biko-73/JediMakerXtream/main/installer.sh -qO - | /bin/sh
	#wget https://raw.githubusercontent.com/biko-73/xstreamity/main/installer.sh -qO - | /bin/sh
	#wget http://tunisia-dreambox.info/TSplugins/NewVirtualKeyBoard/installer.sh -qO - | /bin/sh
	#wget https://raw.githubusercontent.com/biko-73/openmultiboot/main/installer.sh -qO - | /bin/sh
	#wget https://raw.githubusercontent.com/gutosie/neoboot/master/iNB.sh -qO - | /bin/sh
	#wget http://tunisia-dreambox.info/TSplugins/backupflash/installer.sh -qO - | /bin/sh
	#wget https://github.com/s3n0/e2plugins/raw/master/ChocholousekPicons/online-setup -qO - | bash -s install
	#wget https://raw.githubusercontent.com/biko-73/TheWeather/main/installer.sh -O - | /bin/sh
	#wget https://raw.githubusercontent.com/MOHAMED19OS/Download/main/HasBahCa/installer.sh -qO - | /bin/sh
	#wget https://raw.githubusercontent.com/sivel/speedtest-cli/master/speedtest.py -qO - | python
	
	
	
fi

echo ""
sync
echo "##############################################################"
echo "#         Enigma TOOLS $version INSTALLED SUCCESSFULLY       #"
echo "#             Uploded BY LINUXSAT - support on               #"
echo "##############################################################"
echo "**************************************************************"
echo "##############################################################"
echo "#              your Device will RESTART Now                  #"
echo "##############################################################"

exit 0