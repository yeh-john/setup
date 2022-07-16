#!/bin/bash
echo "Start setup lolMiner on linux"
echo ""
echo "Are you running this program using sudo [Y/n]"
read start
if [ $start = "y" ] || [ $start = "Y" ];
then
	wget "https://github.com/Lolliedieb/lolMiner-releases/releases/download/1.52a/lolMiner_v1.52a_Lin64.tar.gz" -O lolminer.tar.gz
	sleep 2 
	tar -xf lolminer.tar.gz
	sleep 2
	mv 1.52a lolMiner
	sleep 2
	wget "https://yeh-john.github.io/file/mining/start/lolminer.sh" -O unmineable.sh
	sleep 2
	cp unmineable.sh ./lolMiner/unmineable.sh
	sleep 2
	sudo rm -rf unmineable.sh
	sleep 2
	sudo rm -rf lolminer.tar.gz
	# Ask reboot
	echo "Do you want to reboot? [Y/n]"
	read Askreboot
	if [ $Askreboot = "Y" ] || [ $Askreboot = "y" ];
	then
		reboot
	else
		echo "Done..."
	fi
fi

