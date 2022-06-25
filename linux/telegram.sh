
#!/bin/bash
echo "Start install Telegram on linux"
echo ""
echo "Are you running this program using sudo? [y/n]"
read start
if [ $start = "y" ] || [ $start = "Y" ];
then
   wget https://telegram.org/dl/desktop/linux -O telegram.tar.xz
   sleep 2
   sudo tar -xvf telegram.tar.xz
   sleep 2
   sudo rm -rf telegram.tar.xz
   sleep 2
   echo "Done...."
   
   
   
