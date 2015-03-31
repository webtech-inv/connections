#!/bin/bash

sed -i "13i multilib_policy=all" /etc/yum.conf

yum install glibc.i686 glibc.x86_64 libstdc++.i686 libstdc++.x86_64 nspr.i686 nspr.x86_64 nss.i686 nss.x86_64 openmotif.i686 openmotif.x86_64


