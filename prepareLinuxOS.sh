#!/bin/bash

umask 022

echo "* - nofiles 8192" > /etc/security/limits.d/ibm2.conf
ulimit -n 8192
