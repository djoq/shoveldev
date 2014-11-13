#heroku create

#!/bin/bash --login git.sh

cyan='\e[0;36m'
yellow='\e[1;33m'
NC='\e[0m'
echo -e "${cyan}Enter the repository name [ENTER]:${NC}"

read name

echo -e "${yellow}Enter your commit message [ENTER]:${NC}"

read commit

git init
git add .
git commit -m "$commit"
git remote add heroku git@heroku.com:"$name".git
sudo git push heroku master  

