#!/bin/bash

echo "Updating nvm path"
export NVM_DIR=~/.nvm
source ~/.nvm/nvm.sh  

echo "Pull changes from GitHub"
git pull

echo "Install app dependencies"
npm install

echo "Run app with pm2 and if it's not running, start it"
pm2 restart tetramed || pm2 start server.js --name "tetramed"