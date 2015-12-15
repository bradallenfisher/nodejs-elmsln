#!/bin/bash

#for RHEL type OS.

#start the build
cd nodejs-elmsln
chmod 700 install.sh
../install.sh

#install node
curl --silent --location https://rpm.nodesource.com/setup | bash -
yum -y install nodejs
yum -y install gcc-c++ make
yum -y groupinstall 'Development Tools'

#Example Chat project
git clone https://github.com/bradallenfisher/chat.git

cd chat
npm install --save express
npm install --save socket.io
npm install forever

forever start index.js
