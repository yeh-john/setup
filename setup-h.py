# This program can install linux John's setup

# Requirements
# You need to use sudo
# You need to in the Downloads directory

import os
import time


# Create setup directory
dir_cmd1 = 'mkdir john-setup'
dir_cmd2 = 'cd john-setup'
# Install ngrok
ngrok_cmd1 = 'wget https://bin.equinox.io/c/bNyj1mQVY4c/ngrok-v3-stable-linux-amd64.tgz -O ngrok.tgz'
ngrok_cmd2 = 'sudo tar xvzf ./ngrok.tgz -C /usr/local/bin'
ngrok_cmd3 = 'ngrok authtoken 28yzD7gWELd83qbWNZxncjVLDHC_4tj6yKBYh3wte6RMWqFng'
ngrok_cmd4 = 'rm -rf *'
# Install blackeye
blackeye_cmd = 'git clone https://github.com/thewickedkarma/blackeye-im.git'
# Install geany
geany_cmd = 'apt install geany'


###--- Start program ---###
print('Start program...')
os.system(dir_cmd1)
os.system(dir_cmd2)

# Start install ngrok
ins_ngrok = input('Do you want to install ngrok [Y/n] ')
if ins_ngrok=='y' or ins_ngrok=='Y':
    time.sleep(1)
    os.system(ngrok_cmd1)
    time.sleep(1)
    os.system(ngrok_cmd2)
    time.sleep(1)
    os.system(ngrok_cmd3)
    os.system(ngrok_cmd4)
else:
    time.sleep(1)

# Start install blackeye
ins_blackeye = input('Do you want to install ngrok [yY/n] ')
if ins_blackeye=='y' or ins_blackeye=='Y':
    time.sleep(1)
    os.system(blackeye_cmd)
else:
    time.sleep(1)

# Start install geany
ins_geany = input('Do you want to install ngrok [Y/n] ')
if ins_geany=='Y' or ins_geany=='y':
    time.sleep(1)
    os.system(geany_cmd)
else:
    time.sleep(1)
