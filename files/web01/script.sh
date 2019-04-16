#!/bin/bash
sudo yum  update
sudo yum install -y httpd
sudo cp /home/ec2-user/web01/www/* /var/www/html/
ls -lthr /var/www/html/
sudo systemctl enable httpd
sudo systemctl enable ssh 
sudo service sshd restart
sudo service httpd restart
