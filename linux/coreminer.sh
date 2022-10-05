#!/bin/bash
echo "Start setup coreminer on linux"
echo ""
echo "Don't run this command using sudo"
echo "Are you ready to run this command? [y/n]"
read start
if [ $start = "y" ] || [ $start = "Y" ];
then
   mkdir coreminer && cd coreminer
   sleep 2
   wget https://github.com/catchthatrabbit/coreminer/releases/download/v0.19.71/coreminer-linux-x86_64.tar.gz
   sleep 2
   tar -xzvf ./coreminer-linux-x86_64.tar.gz
   sleep 2
   rm -rf ./coreminer-linux-x86_64.tar.gz
   sleep 2
   echo "Addr: cb702f743c65bc49cefd3e4ec2626c2bd1921d38c58c, Server: as.catchthatrabbit.com, Port: 8008" > info.txt
   sleep 2
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
