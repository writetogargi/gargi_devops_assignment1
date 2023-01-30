#!/bin/bash

set -m 

sudo apt update && sudo apt upgrade -y

yum update -y 
yum install epel-release -y 
yum install nginx
echo "Hello"  > /var/www/html/index.html 

systemctl start nginx

sudo yum install -y https://s3.amazonaws.com/ec2-downloads-windows/SSMAgent/latest/linux_amd64/amazon-ssm-agent.rpm
sudo systemctl enable amazon-ssm-agent
sudo systemctl start amazon-ssm-agent

mkdir -p /var/nginx

echo "${nginx_conf}" > nginx/server.conf

echo "ECS_CLUSTER=${cluster_name}" >> /etc/ecs/ecs.config 

