#!/bin/bash

#for RHEL type OS.
#install node
yum install git

curl --silent --location https://rpm.nodesource.com/setup | bash -
yum -y install nodejs
yum -y install gcc-c++ make
yum -y groupinstall 'Development Tools'

#Example Chat project
git clone https://github.com/rauchg/chat-example.git

cd chat-example
npm install --save express
npm install --save socket.io

node index
