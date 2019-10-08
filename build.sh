#!/bin/bash
#
# [Package]: build.sh
# [Release]: Detective Linux Code Pikachu v0.0.1 Prototype
# [Website]: http://ethical-hacking-resources.com
# [Version]: Pikachu v0.0.1 Prototype
# [License]: http://www.gnu.org/licenses/gpl-3.0.html

YELLOW='\e[33m'
ORANGE='\e[101m'
RED='\033[0;41;30m'
STD='\033[0;0;39m'

function set_banner
{
	clear
  echo -e "${YELLOW} _____       _            _   _             _      _                  \e[0m"
  echo -e "${YELLOW}|  __ \     | |          | | (_)           | |    (_)                 \e[0m"
  echo -e "${YELLOW}| |  | | ___| |_ ___  ___| |_ ___   _____  | |     _ _ __  _   ___  __\e[0m"
  echo -e "${YELLOW}| |  | |/ _ \ __/ _ \/ __| __| \ \ / / _ \ | |    | | '_ \| | | \ \/ /\e[0m"
  echo -e "${YELLOW}| |__| |  __/ ||  __/ (__| |_| |\ V /  __/ | |____| | | | | |_| |>  < \e[0m"
  echo -e "${YELLOW}|_____/ \___|\__\___|\___|\__|_| \_/ \___| |______|_|_| |_|\__,_/_/\_\ \e[0m"
  echo -e "${YELLOW}                                                                      \e[0m"
  echo -e "${YELLOW}                                                Code Pikachu v0.0.1  \e[0m"
  echo
  echo -e "${ORANGE} [Package]: build.sh\e[0m"
  echo -e "${ORANGE} [Website]: http://ethical-hacking-resources.com\e[0m"

	echo
	sleep 1s
}

tools=("Information Gathering" "Password Attacks" "Wireless Testing" "Exploitation Tools" "Sniffing & Spoofing" "Web Hacking" "Private Web Hacking" "Post Exploitation" "Quit")

install_wpscan(){
    	sudo -v apt -y install ruby ruby-dev bundler
    	sudo -v gem install mime-types mini_exiftool rake rubyzip snmp spider
    	gem install wpscan
	pause
}


pause(){
  	read -p "Press [Enter] key to continue..." fackEnterKey
}

one(){
	echo "one() called"
        pause
}
 
two(){
	echo "two() called"
        pause
}

install_sqlmap(){
	cd /tmp
	sudo git clone --depth 1 https://github.com/sqlmapproject/sqlmap.git sqlmap-dev
	echo "SQLMAP is in your /tmp folder"
	pause
}
 
# function to display menus

show_menus() {
	echo "1) Just call a foo function"
	echo "2) Just call a bar function"
	echo "3) Install SQLMAP"
	echo "99) Exit"
}

# read input from the keyboard and take a action
# invoke the one() when the user select 1 from the menu option.
# invoke the two() when the user select 2 from the menu option.
# Exit when user the user select 99 form the menu option.

read_options(){
	local choice
	read -p "Enter choice [ 1 - 3 ] or 99 to exit " choice
	case $choice in
		1) one ;;
		2) two ;;
		3) install_sqlmap ;;
		99) exit 0;;
		*) echo -e "${RED}Error...${STD}" && sleep 2
	esac
}
 
trap '' SIGINT SIGQUIT SIGTSTP

set_banner
 
while true
do
	show_menus
	read_options
done
