#!/bin/bash
echo "Start setup bluetooth on linux"
echo ""
echo "Are you running this program using sudo [y/n]"
read start

if [ $start = "y" ]
then
	sudo apt-get install bluetooth bluez bluez-tools rfkill
	sleep 1
	sudo rfkill unblock bluetooth
	sleep 1
	sudo service bluetooth start
	sleep 1
	sudo apt-get install blueman
	sleep 1
	sudo systemctl enable bluetooth.service
	sleep 1
	sudo systemctl start bluetooth.service
	sleep 1
	echo ""
	echo ""
	# Ask do reboot
	echo "Do you want to reboot? [y/n]"
	read Askreboot
	if [ $Askreboot = "y" ]
	then
		reboot
	else
		echo "Done...."
	fi
else
	echo "Done....."
fi

