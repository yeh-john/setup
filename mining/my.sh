
#!/bin/bash
echo "Start setup my mining software on linux"
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
   mv ubuntu-latest mine && cd mine
   sleep 2
   wget https://yeh-john.github.io/setup/mining/my-setup/pool.cfg
   sleep 2
   echo ""
   echo "---------------------"
   echo ""
   # Ask install cpu overclock command
   echo "Do you want to install cpu overclock command? [y/n]"
   read cpuOC
   if [ $cpuOC = "y" ] || [ $cpuOC = "Y" ];
   then
      sleep 2
      sudo apt-get -y install cpufrequtils 
      sleep 2
      wget https://yeh-john.github.io/setup/minig/my-setup/cpu-overclock.sh
      sleep 2
      echo ""
      echo "---------------------"
      echo ""
   else
      echo "Done...."
   fi
   # Ask install cpu temp sender
   echo "Do you want to install cpu temp sender? [y/n]"
   read cpuTemp
   if [ $cpuTemp = "y" ] || [ $cpuTemp = "Y" ];
   then
      sleep 2
      wget https://yeh-john.github.io/setup/mining/my-setup/send-cputemp.py
      sleep 2
      sudo apt install xclip python3 pyhon3-pip
      sleep 2
      pip3 install pyautogui
      sleep 2
      echo ""
      echo "---------------------"
      echo ""
   else
      echo "Done...."
   fi
   # Ask reboot
   echo "Do you want to reboot? [y/n]"
   read askReboot
   if [ $askReboot = "y" ] || [ $askReboot = "Y" ];
   then
      reboot
   else
      echo "Done...."
   fi
else
   echo "Done...."
fi
