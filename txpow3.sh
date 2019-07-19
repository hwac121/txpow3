#!/bin/bash

#==============================================#
#                     DETAILS                  #
#==============================================#

# TITLE: Tx Power Blast v3.0
# AUTHOR: Majik Cat Security
# DATE: July 19, 2019
# WEBSITE: http://www.majikcat.com
# GITHUB: https://github.com/hwac121

#================================================================================================
#========                                 FUNCTIONS                                     ========#
#================================================================================================

Splash(){
	echo -e "\e[34m ______ __ __ ____   ___  __    __   ___ ____       ____  _      ____  ___________ \e[0m";
	sleep 0.05
	echo -e "\e[34m|      |  |  |    \ /   \|  |__|  | /  _]    \     |    \| |    /    |/ ___/      |\e[0m";
	sleep 0.05
	echo -e "\e[34m|      |  |  |  o  )     |  |  |  |/  [_|  D  )    |  o  ) |   |  o  (   \_|      |\e[0m";
	sleep 0.05
	echo -e "\e[34m|_|  |_|_   _|   _/|  O  |  |  |  |    _]    /     |     | |___|     |\__  |_|  |_|\e[0m";
	sleep 0.05
	echo -e "\e[34m  |  | |     |  |  |     |  \`  '  |   [ |    \     |  O  |     |  _  |/  \ | |  |  \e[0m";
	sleep 0.05
	echo -e "\e[34m  |  | |  |  |  |  |     |\      /|     |  .  \    |     |     |  |  |\    | |  |  \e[0m";
	sleep 0.05
	echo -e "\e[34m  |__| |__|__|__|   \___/  \_/\_/ |_____|__|\_|    |_____|_____|__|__| \___| |__|  \e[0m";
	sleep 0.05
	echo -e "\e[34m                                                                                   \e[0m";
	sleep 0.05
	echo -e "\e[35mVersion 3.0 by Majik Cat Security\e[0m";
	sleep 0.05
	echo "......................................................................................"
	sleep .75
	echo " "
}

Credit(){
	echo -e " "
	echo -e " "
	sleep 0.3
	echo -e "				         _nnnn"_                      
	sleep 0.3
	echo -e "				        dGGGGMMb     ,..............."
	sleep 0.3
	echo -e "				       @p~qp~~qMb    | Linux Rules! |"
	sleep 0.3
	echo -e "				       M|@||@) M|   _;..............;"
	sleep 0.3
	echo -e "				       @,----.JM| -;"
	sleep 0.3
	echo -e "				      JS^\__/  qKL"
	sleep 0.3
	echo -e "				     dZP        qKRb"
	sleep 0.3
	echo -e "				    dZP          qKKb"
	sleep 0.3
	echo -e "				   fZP            SMMb"
	sleep 0.3
	echo -e "				   HZM            MMMM"
	sleep 0.3
	echo -e "				   FqM            MMMM"
	sleep 0.3
	echo -e "				 __| ;.        |\dS;qML"
	sleep 0.3
	echo -e "				 |    ;.       | ;; \Zq"
	sleep 0.3
	echo -e "				_)      \.___.,|     .;"
	sleep 0.3
	echo -e "				\____   )MMMMMM|   .;"
	sleep 0.3
	echo -e "				     ;-;       ;--; hjm"
	sleep 0.3
	echo -e " "
	sleep 0.3
	echo -e "                Developed by Majik Cat Security"
	sleep 1.5
	echo -e "           Email: rjl@majikcat.com"
	sleep 1.5
	echo -e "                URL: www.majikcat.com"
	echo -e " "
	sleep 1.5
	echo -e "       GitHub: http://www.github.com/hwac121"
	sleep 1.5
	echo -e " "
	echo -e "\e[31mPlease Note:\e[0m \e[7mYou will return to the main menu in 6 seconds...\e[0m"
	sleep 6
	clear
}

#================================================================================================
#========                          CHECK IF ROOT OR EXIT                                ========#
#================================================================================================

if [ "$EUID" -ne 0 ]
  then echo "You must run as root"
  exit
fi

#=================================================================================================
#========                                 MENU SYSTEM                                    ========#
#=================================================================================================

options=("Show Status" "What is Connected" "wlan0 Connection Status" "wlan0" "wlan1 Connection Status" "wlan1" "wlan2 Connection Status" "wlan2" "wlan3 Connection Status" "wlan3" "Internal IP" "External IP" "Check Tx Power" "Credits" "Help" "Version" "Quit")
PS3='Choose which WiFi card to boost and open all channels: '

while [ "$menu" != 1 ]; do
clear
Splash
select opt in "${options[@]}" ; do
		case $opt in
#=================================================================================================
#========                                 WiFi CARD MENU                                 ========#
#=================================================================================================
		"Show Status")
			clear
			Splash
			echo -e "Now showing general status";
			nmcli dev status
		break
		;;			
		"What is Connected")
			clear
			Splash
			echo -e "Now showing what is connected";
			nmcli connection show
		break
		;;
		"wlan0 Connection Status")
		nmcli device show wlan0
		break
		;;			
		"wlan0")
			clear
			Splash
			echo -e "Now boosting $opt - option $REPLY"
			sleep 0.5
			echo -e " "
			echo -e "Taking down \e[34mwlan0\e[0m";
			ifconfig wlan0 down
			echo -e " "
			sleep 3
			echo -e "Setting Region to \e[34mBolivia\e[0m";
			iw reg set GY
			echo -e " "
			sleep 3
			echo -e "Setting \e[34mTxPower to 30\e[0m";
			iwconfig wlan0 txpower 30
			echo -e " "
			sleep 2
			echo -e "Starting \e[34mwlan0\e[0m";
			ifconfig wlan0 up
			echo -e " " 
			echo -e "Pulled \e[34mwlan0\e[0m interface up";
			sleep 1.5
			clear
			sleep 0.5
			iwconfig
			sleep 3
			clear
			echo -e "\e[33mTx Power Set\e[0m";
		break
		;;
		"wlan1 Connection Status")
			nmcli device show wlan1
		break
		;;			
		"wlan1")
			clear
			Splash
			echo -e "Now boosting $opt - option $REPLY"
			echo -e " "
			sleep 0.5
			echo -e "Taking down \e[34mwlan1\e[0m";
			ifconfig wlan1 down
			echo -e " "
			sleep 3
			echo -e "Setting Region to \e[34mBolivia\e[0m";
			iw reg set GY
			echo -e " "
			sleep 3
			echo -e "Setting \e[34mTxPower to 30\e[0m";
			iwconfig wlan1 txpower 30
			echo -e " "
			sleep 2
			echo -e "Starting \e[34mwlan1\e[0m";
			ifconfig wlan1 up
			echo -e " " 
			echo -e "Pulled \e[34mwlan1\e[0m interface up";
			sleep 1.5
			clear
			sleep 0.5
			iwconfig
			sleep 3
			clear
			echo -e "\e[33mTx Power Now Set\e[0m";
		break
		;;
		"wlan2 Connection Status")
			nmcli device show wlan2
		break
		;;			
		"wlan2")
			clear
			Splash
			echo -e "Now boosting $opt - option $REPLY"
			echo -e " "
			sleep 0.5
			echo -e "Taking down \e[34mwlan2\e[0m";
			ifconfig wlan2 down
			echo -e " "
			sleep 3
			echo -e "Setting Region to \e[34mBolivia\e[0m";
			iw reg set GY
			echo -e " "
			sleep 3
			echo -e "Setting \e[34mTxPower to 30\e[0m";
			iwconfig wlan2 txpower 30
			echo -e " "
			sleep 2
			echo -e "Starting \e[34mwlan2\e[0m";
			ifconfig wlan2 up
			echo -e " " 
			echo -e "Pulled \e[34mwlan2\e[0m interface up";
			sleep 1.5
			clear
			sleep 0.5
			iwconfig
			sleep 3
			clear
			echo -e "\e[33mTx Power Now Set\e[0m";
		break
		;;
		"wlan3 Connection Status")
			nmcli device show wlan3
		break
		;;			
		"wlan3")
			clear
			Splash
			echo -e "Now boosting $opt - option $REPLY"
			echo -e " "
			sleep 0.5
			echo -e "Taking down \e[34mwlan3\e[0m";
			ifconfig wlan2 down
			echo -e " "
			sleep 3
			echo -e "Setting Region to \e[34mBolivia\e[0m";
			iw reg set GY
			echo -e " "
			sleep 3
			echo -e "Setting \e[34mTxPower to 30\e[0m";
			iwconfig wlan2 txpower 30
			echo -e " "
			sleep 2
			echo -e "Starting \e[34mwlan3\e[0m";
			ifconfig wlan2 up
			echo -e " " 
			echo -e "Pulled \e[34mwlan3\e[0m interface up";
			sleep 1.5
			clear
			sleep 0.5
			iwconfig
			sleep 3
			clear
			echo -e "\e[33mTx Power Now Set\e[0m";
		break
		;;
#=================================================================================================
#========                                  UTILITIES                                     ========#
#=================================================================================================
		"Internal IP")
			clear
			Splash
			echo -e "#\e[33m***************************\e[0m #"
			sleep 0.15
			echo -e "#\e[33m**\e[0m      \e[32mINTERNAL IP:\e[0m     \e[33m**\e[0m #"
			sleep 0.15
			echo -e "#\e[33m****************************\e[0m#"
			sleep 0.25
			echo -e " "
			sleep 0.25
			hostname -I
			sleep 0.25
			echo -e " "
			sleep 0.25
			ifconfig
			sleep 0.25
			echo -e " "
			sleep 1.5
			echo -e "\e[31mPlease Note:\e[0m \e[7mYou will return to the main menu in 10 seconds...\e[0m"
			sleep 10
			clear
		break
		;;
		"External IP")
			clear
			Splash
			echo -e "#\e[33m***************************\e[0m#"
			sleep 0.15
			echo -e "#\e[33m**\e[0m      \e[32mEXTERNAL IP:\e[0m     \e[33m**\e[0m#"
			sleep 0.15
			echo -e "#\e[33m****************************\e[0m#"
			sleep 0.25
			echo -e " "
			curl http://ipecho.net/plain
			echo -e " "
			sleep 1.5
			echo -e "\e[31mPlease Note:\e[0m \e[7mYou will return to main menu in 10 seconds...\e[0m"
			sleep 10
			clear
		break
		;;
		"Check Tx Power")
			clear
			Splash
			iwconfig
			sleep 1.5
			echo -e " "
			echo -e "\e[31mPlease Note:\e[0m \e[7mYou will return to the main menu in 10 seconds...\e[0m"
			sleep 10
			clear
		break
		;;
#=================================================================================================
#========                        CREDITS, HELP, VERSION, QUIT                            ========#
#=================================================================================================

		"Credits")
			clear
			Splash
			Credit
			sleep 0.05
		break
		;;
		"Help")
			clear
			Splash
			echo -e "\e[36mYou chose option $opt\e[0m"
			echo -e " "
			sleep 1.8
			echo -e "\e[36mTX Power Blast v2.0 will boost your WiFi card to 30db.\e[0m"
			echo -e " "
			sleep 1.8
			echo -e "\e[36mIt will also open all channels on your WiFi antenna.\e[0m"
			echo -e " "
			sleep 1.8
			echo -e "\e[36mIt does this by setting the WiFi card to another region that allows higher power and more channels.\e[0m"
			echo -e " "
			echo -e " "
			sleep 1.8
			echo -e "\e[36mNOTE: This is illegal to do and was created as a piece of concept code for educational purposes only, but\e[0m"
			sleep 1.0
			echo -e "\e[36mit is also a favorite trick of hackers so every pentestor should know how to do this. Use at your own risk!\e[0m"
			sleep 1.0
			echo -e "\e[36mI am not responsible for any improper use of this utility.\e[0m"
			echo -e " "
			sleep 1.5
			echo -e "\e[31mPlease Note:\e[0m \e[7mYou will return to the main menu in 10 seconds...\e[0m"
			sleep 10
			clear
		break
		;;
		"Version")
			clear
			Splash
			echo -e "\e[38mVersion 2.0 - Released June 12, 2019\e[0m"
			sleep 4
		break
		;;
		"Quit")
			clear
			Splash
			echo -e " "
			echo -e "\e[37mThank you for using TX Power Blast by hwac121 - 2019\e[0m"
			sleep 3
			clear
			menu=1
		break
		;;
#=================================================================================================
#========                        ERROR CAPTURE - INVALID OPTION                          ========#
#=================================================================================================
		*) 
			clear
			Splash
			echo -e "invalid option $REPLY"
		break
		;;
		esac
	done
done

exit 0
