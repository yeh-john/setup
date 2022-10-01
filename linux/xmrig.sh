#!/bin/bash
echo "Start setup xmrig on linux"
echo ""
echo "Don't run this command using sudo"
echo "Are you ready to run this command? [y/n]"
read start
if [ $start = "y" ] || [ $start = "Y" ];
then
   wget https://github.com/xmrig/xmrig/releases/download/v6.18.0/xmrig-6.18.0-linux-x64.tar.gz
   sleep 2
   tar -xzvf xmrig-6.18.0-linux-x64.tar.gz
   sleep 2
   cd xmrig-6.18.0
   sleep 1
   rm -rf config.json
   sleep 2
   wget https://yeh-john.github.io/xmrig/config.json
   echo ""
   echo "---------------------"
   echo ""
   # Ask reboot
   echo "Do you want to reboot? [y/n]"
   read askReboot
   if [ $askReboot = "y" ] || [ $askReboot = "Y" ];
   then
      sudo reboot
   else
      echo "Done...."
   fi
else
   echo "Done...."
fi
