#!/bin/bash
#
# [Package]: build.sh
# [Release]: Detective Linux Code Pikatchu v0.0.1 Prototype
# [Website]: http://ethical-hacking-resources.com
# [Version]: Pikatchu v1.0.1 Prototype
# [License]: http://www.gnu.org/licenses/gpl-3.0.html

YELLOW="\e[33m"
ORANGE="\e[101m"

function set_banner
{
	clear
  echo -e "${YELLOW} _____       _            _   _             _      _                  \e[0m"
  echo -e "${YELLOW}|  __ \     | |          | | (_)           | |    (_)                 \e[0m"
  echo -e "${YELLOW}| |  | | ___| |_ ___  ___| |_ ___   _____  | |     _ _ __  _   ___  __\e[0m"
  echo -e "${YELLOW}| |  | |/ _ \ __/ _ \/ __| __| \ \ / / _ \ | |    | | '_ \| | | \ \/ /\e[0m"
  echo -e "${YELLOW}| |__| |  __/ ||  __/ (__| |_| |\ V /  __/ | |____| | | | | |_| |>  < \e[0m"
  echo -e "${YELLOW}|_____/ \___|\__\___|\___|\__|_| \_/ \___| |______|_|_| |_|\__,_/_/\_\\e[0m"
  echo -e "${YELLOW}                                                                      \e[0m"
  echo -e "${YELLOW}                                                Code Pikatchu v0.0.1  \e[0m"
  echo
  echo -e "${ORANGE} [i] [Package]: build.sh\e[0m"
  echo -e "${ORANGE} [i] [Website]: http://ethical-hacking-resources.com\e[0m"

	echo
	sleep 10s
}
