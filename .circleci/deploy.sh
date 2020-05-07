#! /bin/bash

# move workking directory
cd ~/Attendance/

# kill running nuxt server
kill $(lsof -i:3000 -t)

# force pull to github
git fetch
git reset --hard origin/master

# start nuxt server
npm run build
nohup npm start > ./.circleci/log/nohup.log 2>&1 &
