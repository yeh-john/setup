#!/bin/bash
echo "Start setup Japanese on linux"
echo ""
echo "Are you running this program using sudo? [y/n]"
read start
if [ $start = "y" ] || [ $start = "Y" ];
then
   sudo apt-get install ibus-anthy
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
