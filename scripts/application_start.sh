#!/bin/bash

# giver permission to the files in the express app directory
sudo chmod -R 777 /home/ec2-user/express-app

# navigate into our wokring directory where we have our github files
cd /home/ec2-user/express-app

# add npm and node to the path
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # loads nmv
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

# install node modiles
npm install

# start our node app in the background
node app.js > app.out.log 2> app.err.log < /dev/null &

