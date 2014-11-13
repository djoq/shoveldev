#!/bin/bash --login git.sh

cyan='\e[0;36m'
yellow='\e[1;33m'
NC='\e[0m'

echo -e "${yellow}Enter your commit message [ENTER]:${NC}"

read commit

git init
git add .
git commit -m "$commit"
sudo git push heroku master  

