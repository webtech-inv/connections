#!/bin/bash

setenforce 0
sed -i 's/SELINUX=enforcing/SELINUX=permissive/g' /etc/sysconfig/selinux

umask 022

echo "* - nofile 8192" > /etc/security/limits.d/ibm.conf
ulimit -n 8192

#install dependencies
yum install $(cat linuxLibraries.txt) -y

#Install IIM
mkdir -p /opt/IBM/IIM
unzip agent.installer.linux.gtk.x86_1.8.1000.20141126_2002.zip -d agent.installer.linux.gtk.x86_1.8.1000.20141126_2002
./installc -log /opt/software/log/IIM.log -acceptLicense -installationDirectory /opt/IBM/IIM -showProgress
