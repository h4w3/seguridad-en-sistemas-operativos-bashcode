#!/bin/bash

cat /etc/os-release

if [ NAME="Ubuntu" ]
then
sudo apt update -y
sudo apt upgrade -y
sudo apt-get install clamav -y
sudo apt-get install clamav-daemon -y
fi

if [ NAME="CentOS Linux" ]
then
yum update -y
yum upgrade -y
sudo yum -y install epel-release -y
sudo yum clean all -y
yum -y install clamav-server clamav-data clamav-update clamav-filesystem clamav clamav-scanner-systemd clamav-devel clamav-lib clamav-server-systemd
fi