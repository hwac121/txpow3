#!/bin/bash

#==============================================#
#                     DETAILS                  #
#==============================================#

# TITLE: Tx Power Blast v3.0
# AUTHOR: Majik Cat Security
# DATE: November 3, 2022
# GITHUB: https://github.com/hwac121

#================================================================================================
#                                    LISTED VARIABLES
#================================================================================================



#================================================================================================
#========                                 FUNCTIONS                                     ========#
#================================================================================================

Splash(){
	echo -e "\e[32m ______ __ __ ____   ___  __    __   ___ ____       ____  _      ____  ___________ \e[0m";
	sleep 0.05
	echo -e "\e[32m|      |  |  |    \ /   \|  |__|  | /  _]    \     |    \| |    /    |/ ___/      |\e[0m";
	sleep 0.05
	echo -e "\e[32m|      |  |  |  o  )     |  |  |  |/  [_|  D  )    |  o  ) |   |  o  (   \_|      |\e[0m";
	sleep 0.05
	echo -e "\e[32m|_|  |_|_   _|   _/|  O  |  |  |  |    _]    /     |     | |___|     |\__  |_|  |_|\e[0m";
	sleep 0.05
	echo -e "\e[32m  |  | |     |  |  |     |  \`  '  |   [ |    \     |  O  |     |  _  |/  \ | |  |  \e[0m";
	sleep 0.05
	echo -e "\e[32m  |  | |  |  |  |  |     |\      /|     |  .  \    |     |     |  |  |\    | |  |  \e[0m";
	sleep 0.05
	echo -e "\e[32m  |__| |__|__|__|   \___/  \_/\_/ |_____|__|\_|    |_____|_____|__|__| \___| |__|  \e[0m";
	sleep 0.05
	echo -e "\e[32m                                                                                   \e[0m";
	sleep 0.05
	echo -e "\e[35mVersion 3.0\e[0m";
	sleep 0.05
	echo "......................................................................................"
	sleep .75
	echo " "
	echo -e "by Majik Cat Security"
	echo " "
}

#================================================================================================
#========                          CHECK IF ROOT OR EXIT                                ========#
#================================================================================================

clear
Splash
if [ "$EUID" -ne 0 ]
  then 
  echo "You must run as root or sudo txpow"
  exit
fi

#================================================================================================
#                              CHECK FOR PREVIOUS VERSION
#================================================================================================
clear
Splash
echo -e "\e[34mRemoving old version if present...\e[0m"
rm /bin/txpow3
echo -e "\e[36mSetting Global Permissions...\e[0m"
cp txpow3.sh /bin/txpow3
sleep 1.5
echo -e "\e[32m....Setting permissions....\e[0m"
sleep 0.5
chmod +x /bin/txpow3
chmod +x txpow3.sh
sleep 1.5
echo -e "\e[34mInstallation is complete!\e[0m"
sleep 1.5
echo -e "Just type \e[32mtxpow3\e[0m as root, or as user \e[32msudo txpow3\e[0m to run anywhere in terminal"
echo " "
sleep 3
clear
