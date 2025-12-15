#!/bin/bash
dnf update -y
dnf install -y httpd
echo "hello parameswar patra from apache on Amazon Linux 2023" > /var/www/html/index.html
systemctl start httpd
systemctl enable httpd