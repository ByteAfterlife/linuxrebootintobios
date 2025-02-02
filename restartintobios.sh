#!/bin/bash
RED='\033[0;31m'
NC='\033[0m'
echo "You will be rebooted into the BIOS immediately without any further confirmation."
echo -e "${RED}Are you sure you want to proceed?${NC}"
select yn in "Yes" "No"; do
    case $yn in
        Yes ) systemctl reboot --firmware-setup; break;;
        No ) echo "Aborted"; exit;;
    esac
done
