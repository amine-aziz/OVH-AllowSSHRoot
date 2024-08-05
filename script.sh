#!/bin/bash

echo "Allowing user root SSH Login..
sudo sed -ri 's/#PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config
echo "Changing user root Password.."
sudo passwd root
echo "Restaring SSH Server.."
sudo service sshd restart
echo "Done!"
echo "Test SSH login with user root? (Y/n)"
    read -r input
    if [[ "$user_input" =~ ^[Yy]$ ]]; then
        ssh root@127.0.0.1 'echo "It work!" && sleep 1 && exit'
    fi
    else
        exit
    fi
fi
