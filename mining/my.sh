
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
   # Ask install cpu temp sender
   echo "Do you want to install cpu temp sender? [y/n]"
   read cpuTemp
   if [ $cpuTemp = "y" ] || [ $cpuTemp = "Y" ];
   then
      sleep 2
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
