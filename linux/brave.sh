#!/bin/bash
echo "Start install brave on linux"
echo ""
echo "Are you running this program using sudo? [y/n]"
read start
if [ $start = "y" ] || [ $start = "Y" ];
then
  sudo apt install curl
  sleep 1
  sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg
  sleep 1
  echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list
  sleep 1
  sudo apt update
  sleep 1
  sudo apt install brave-browser
   
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


