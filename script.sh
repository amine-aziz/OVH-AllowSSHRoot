#!/bin/bash

echo "Allowing user root SSH Login..
sudo sed -ri 's/#PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config
echo "Changing user root Password.."
sudo passwd root
echo "Restaring SSH Server.."
sudo service sshd restart
echo "Done!"
echo "Testing SSH login with user root"
ssh root@127.0.0.1 'echo "It work!" && sleep 1 && exit'

