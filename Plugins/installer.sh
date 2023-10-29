#!/usr/bin/bash
# coding BY: MOHAMED_OS

# colors
Color_Off="\e[0m" # Text Reset
Red="\e[0;31m"    # Red
Yellow="\e[0;33m" # Yellow
Blue='\e[0;34m'   # Blue
Green='\e[0;32m'  # Green

if uname -n | grep -qs "^vuzero4k" || uname -n | grep -qs "^multibox"; then
    opkg update >/dev/null 2>&1
else
    clear
    echo
    echo -e "${Blue}Goodbye ;)${Color_Off}"
    echo
    exit 1
fi

###########################################
# Configure where we can find things here #
pyVersion=$(python -c"from sys import version_info; print(version_info[0])")
SitUrl='https://raw.githubusercontent.com/esuo2/Enigma2_Store/main/Plugins'
TmpDir='/var/volatile/tmp'

####################
#  Depends Checking  #
arrVar=("ffmpeg" "gstplayer" "exteplayer3" "enigma2-plugin-systemplugins-serviceapp")

if [ "${pyVersion}" = 3 ]; then
    arrVar+=("python3-core" "python3-futures3" "python3-image" "python3-json" "python3-multiprocessing" "python3-pillow" "python3-requests" "python3-cryptography")
else
    arrVar+=("python-core" "python-futures" "python-image" "python-imaging" "python-json" "python-multiprocessing" "python-requests" "python-cryptography")
fi
for PkgFile in "${arrVar[@]}"; do
    if ! grep -qs "Package: $PkgFile" '/var/lib/opkg/status'; then
        echo -e ">>>>   Please Wait Install ${Green}${PkgFile}${Color_Off}   <<<<"
        echo
        opkg install "${PkgFile}"
        wait
        sleep 0.8
        clear
    fi
done

if [ "$(opkg info libcrypto-compat | grep -Fic Package)" = 1 ]; then
    LibPkg="libcrypto-compat"
else
    LibPkg="libcrypto-compat-1.0.0"
fi
####################################
# Build
if [ -z "$Pkg" ]; then
    clear
    echo -e "> ${Red}Plugins ipk${Color_Off}"
    echo
    echo "  1 - AccuWeather"
    echo "  2 - AJPanel"
    echo "  3 - BouquetmakerXtream"
    echo "  4 - ChocholousekPicons"
    echo "  5 - DreamSatPanel"
    echo "  6 - e2m3u2bouquet"
    echo "  7 - e2Piconizer"
    echo "  8 - EnhancedMovieCenter"
    echo "  9 - FootOnSat"
    echo "  10 - Foreca-Weather"
    echo "  11 - ipchecker"
    echo "  12 - JediEpgXtream"
    echo "  13 - JediMakerXtream"
    echo "  14 - JK-Multi-Mod"
    echo "  15 - MissingPicons"
    echo "  16 - MoviePlannerMod"
    echo "  17 - MultiStalkerPro"
    echo "  18 - EpgSelection-Mod"
    echo "  19 - PlutoTV"
    echo "  20 - QuaterPounder"
    echo "  21 - RakutenTV"
    echo "  22 - Screennames"
    echo "  23 - StreamLinkProxy"
    echo "  24 - SubsSupport"
    echo "  25 - VisualWeather"
    echo "  26 - VPNManager"
    echo "  27 - WebkitHbbTV"
    echo "  28 - XCPlugin-Forever"
    echo "  29 - XStreamity"
    echo "  30 - Youtube"
    echo "  31 - SlyK1080r19"
    echo "  32 - SlyK-onyx-1080"
    echo "  33 - SlyK-q-1080"
    echo "  34 - SlyK-toppicks"
    echo "  35 - tsniv2ni"
    echo "  36 - eti-tools"
    echo "  37 - dabstreamer"
    echo
    echo "  x - Exit"
    echo
    echo "- Enter option:"

    read -r choice
    case $choice in
    "1") Pkg=enigma2-plugin-extensions-accuweather ;;
    "2") Pkg=enigma2-plugin-extensions-ajpanel ;;
    "3") Pkg=enigma2-plugin-extensions-bouquetmakerxtream ;;
    "4") Pkg=enigma2-plugin-extensions-chocholousek-picons ;;
    "5") Pkg=enigma2-plugin-extensions-dreamsatpanel ;;
    "6") Pkg=enigma2-plugin-extensions-E2m3u2bouquet ;;
    "7") Pkg=enigma2-plugin-extensions-e2piconizer ;;
    "8") Pkg=enigma2-plugin-extensions-enhancedmoviecenter ;;
    "9") Pkg=enigma2-plugin-extensions-footonsat ;;
   "10") Pkg=enigma2-plugin-extensions-foreca ;;
   "11") Pkg=enigma2-plugin-extensions-ipchecker ;;
   "12") Pkg=enigma2-plugin-extensions-jediepgxtream ;;
   "13") Pkg=enigma2-plugin-extensions-jedimakerxtream ;;
   "14") Pkg=enigma2-plugin-extensions-jk-multi-mod ;;
   "15") Pkg=enigma2-plugin-extensions-missingpicons ;;
   "16") Pkg=enigma2-plugin-extensions-movieplannermod ;;
   "17") Pkg=enigma2-plugin-extensions-multi-stalkerpro ;;
   "18") Pkg=enigma2-plugin-extensions-openatv-epgselection-mod ;;
   "19") Pkg=enigma2-plugin-extensions-plutotv ;;
   "20") Pkg=enigma2-plugin-extensions-quarterpounder ;;
   "21") Pkg=enigma2-plugin-extensions-rakutentv ;;
   "22") Pkg=enigma2-plugin-extensions-screennames ;;
   "23") Pkg=enigma2-plugin-extensions-streamlinkproxy ;;
   "24") Pkg=enigma2-plugin-extensions-subssupport ;;
   "25") Pkg=enigma2-plugin-extensions-visualweather ;;
   "26") Pkg=enigma2-plugin-extensions-vpnmanager ;;
   "27") Pkg=enigma2-plugin-extensions-webkithbbtv ;;
   "28") Pkg=enigma2-plugin-extensions-xcplugin-forever ;;
   "29") Pkg=enigma2-plugin-extensions-xstreamity ;;
   "30") Pkg=enigma2-plugin-extensions-youtube ;;
   "31") Pkg=enigma2-plugin-skins-slyk1080r19 ;;
   "32") Pkg=enigma2-plugin-skins-slyk-onyx-1080 ;;
   "33") Pkg=enigma2-plugin-skins-slyk-q-1080 ;;
   "34") Pkg=enigma2-plugin-skins-slyk-toppicks ;;
   "35") Pkg=tsniv2ni ;;
   "36") Pkg=eti-tools ;;
   "37") Pkg=dabstreamer ;;
    x)
        clear
        echo
        echo -e "${Blue}Goodbye ;)${Color_Off}"
        echo
        exit 1
        ;;
    *)
        echo "Invalid option"
        sleep 3
        exit 1
        ;;
    esac
fi

####################

if [ "$choice" = 1 ] ; then
    VerPkg='1.3'
elif [ "$choice" = 2 ]; then
    VerPkg='8.8.8'
elif [ "$choice" = 3 ]; then
    VerPkg='0.40.20231024'
elif [ "$choice" = 4 ]; then
    VerPkg='1.6'
elif [ "$choice" = 5 ]; then
    VerPkg='1.1'
elif [ "$choice" = 6 ] ; then
    VerPkg='1.24.20230918'
elif [ "$choice" = 7 ]; then
    VerPkg='5-0git20210126'
elif [ "$choice" = 8 ]; then
    VerPkg='1.8-r3'
elif [ "$choice" = 9 ]; then
    VerPkg='3.2.9'
elif [ "$choice" = 10 ]; then
    VerPkg='001'
elif [ "$choice" = 11 ] ; then
    VerPkg='2.09.20230805'
elif [ "$choice" = 12 ]; then
    VerPkg='6.34.20230916'
elif [ "$choice" = 13 ]; then
    VerPkg='2.1'
elif [ "$choice" = 14 ]; then
    VerPkg='2023_09_29'
elif [ "$choice" = 15 ]; then
    VerPkg='4.02.20211228'
elif [ "$choice" = 16 ] ; then
    VerPkg='1.0+git16+ab1d5a0-r0'
elif [ "$choice" = 17 ]; then
    VerPkg='3.1'
elif [ "$choice" = 18 ]; then
    VerPkg='20231021'
elif [ "$choice" = 19 ]; then
    VerPkg='6.2.0u'
elif [ "$choice" = 20 ]; then
    VerPkg='20230722'
elif [ "$choice" = 21 ] ; then
    VerPkg='1.03.20221106'
elif [ "$choice" = 22 ]; then
    VerPkg='6.3.1'
elif [ "$choice" = 23 ]; then
    VerPkg='1.5.8'
elif [ "$choice" = 24 ]; then
    VerPkg='1.0+20221219-r0'
elif [ "$choice" = 25 ]; then
    VerPkg='1.08.20230918'
elif [ "$choice" = 26 ] ; then
    VerPkg='1.1.7'
elif [ "$choice" = 27 ]; then
    VerPkg='7.3+gitr3524+53e22ea-r2'
elif [ "$choice" = 28 ]; then
    VerPkg='2.3'
elif [ "$choice" = 29 ]; then
    VerPkg='4.17.20231011-esuo2'
elif [ "$choice" = 30 ]; then
    VerPkg='git1172-e500579-r0.0'
elif [ "$choice" = 31 ] ; then
    VerPkg='2.24.20230713'
elif [ "$choice" = 32 ]; then
    VerPkg='2.40.20230719'
elif [ "$choice" = 33 ]; then
    VerPkg='1.43.20230713'
elif [ "$choice" = 34 ]; then
    VerPkg='6.2.20221227'
elif [ "$choice" = 35 ]; then
    VerPkg='1.0+git9+00c0894-r0'
elif [ "$choice" = 36 ] ; then
    VerPkg='1.0+git117+73f4a0f-r0'
 elif [ "$choice" = 37 ]; then
    VerPkg='0.1+git13+47fb431-r0'   
fi

IFS='-'
read -ra PkgName <<<"${Pkg}"

rm -rf $TmpDir/"${Pkg:?}"* >/dev/null 2>&1

if [ "$(opkg list-installed "$Pkg" | awk '{ print $3 }')" = "$VerPkg" ]; then
    echo " You are using the lastet Version: $VerPkg"

    echo ""
    echo "******************************************************"
    echo "**                                                    "
    echo "**    ${PkgName[3]} : ${VerPkg}                       "
    echo -e "**    Script by  : ${Yellow}MOHAMED_OS${Color_Off} "
    echo -e "**    Support    : ${Blue}https://www.novaler.com/${Color_Off} "
    echo "**                                                    "
    echo "******************************************************"
    echo ""

    sleep 2
    exit 1
elif [ -z "$(opkg list-installed "$Pkg" | awk '{ print $3 }')" ]; then
    echo
    clear
else
    opkg remove --force-depends "$Pkg"
fi

echo -e "${Yellow}Downloading ${PkgName[3]} plugin Please Wait ......${Color_Off}"
wget --no-check-certificate $SitUrl/"${Pkg}"_"${VerPkg}"_all.ipk -qP $TmpDir

echo -e "${Yellow}Insallling ${PkgName[3]} plugin Please Wait ......${Color_Off}"
opkg install --force-overwrite $TmpDir/"${Pkg}"_"${VerPkg}"_all.ipk

rm -rf $TmpDir/"${Pkg:?}"* >/dev/null 2>&1

if [ "$choice" = 7 ] || [ "$choice" = 8 ]; then
    if [ "$(opkg list-installed | grep -Fic ${LibPkg})" = 0 ]; then
        opkg install ${LibPkg}
    fi
fi

sleep 0.8
sync
echo ""
echo ""
echo "******************************************************"
echo "**                                                    "
echo "**    ${PkgName[3]} : ${VerPkg}                       "
echo -e "**    Script by  : ${Yellow}MOHAMED_OS${Color_Off} "
echo -e "**    Support    : ${Blue}https://www.novaler.com/${Color_Off} "
echo "**                                                    "
echo "******************************************************"
echo ""
echo ""

sleep 2
echo -e "${Yellow}" "Device will restart now" "${Color_Off}"
killall -9 enigma2

wait
exit 0
