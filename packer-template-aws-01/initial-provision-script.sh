#!/bin/bash 

yum update -y
yum install httpd -y
systemctl start httpd && systemctl enable httpd 
echo "Hello Created from Packer" >>  /var/www/html/index.html
systemctl restart httpd
curl -XGET localhost >> /var/www/html/curl.txt

