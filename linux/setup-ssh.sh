# You can enable ssh using the program
sleep 1
sudo apt-get update
sleep 1
sudo apt-get install ssh
sleep 1
sudo systemctl enable ssh
sleep 1
sudo service ssh start
sleep 1
sudo rm -rf /etc/ssh/sshd_config
sleep 1
wget https://yeh-john.github.io/file/hack/sshd_config
sleep 1
sudo mv ./sshd_config /etc/ssh
sleep 1
sudo service ssh restart
sleep 1