#!/bin/bash

setenforce 0
sed -i 's/SELINUX=enforcing/SELINUX=permissive/g' /etc/sysconfig/selinux

umask 022

echo "* - nofiles 8192" > /etc/security/limits.d/ibm.conf
ulimit -n 8192