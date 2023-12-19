#!/bin/bash
declare -l line
until [[ $line == 'stop' ]]
do
  line=$(cat /var/log/pipe)
  echo $line >> /var/log/pipe.out
done

#usage
# copy script to  /usr/local/bin/


# create service
# [Unit]
# Description=A demo service with pipe
# After=sshd.service

# [Service]
# Type=simple
# ExecStart=/usr/local/bin/pipe.sh 
# ExecStop=/bin/kill $MAINPID
# KillMode=process

# [Install]
# WantedBy= multi-user.target

#sudo cp mypipe.service /etc/systemd/system

# sudo chmod +x /usr/local/bin/pipe.sh
# sudo chown root:root /usr/local/bin/pipe.sh
# sudo systemctl daemon-reload
# sudo systemctl restart mypipe.service