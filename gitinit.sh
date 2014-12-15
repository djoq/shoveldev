#sudo bash gitinit.sh

cyan='\e[0;36m'
yellow='\e[1;33m'
NC='\e[0m'
echo -e "${cyan}Enter the repository name [ENTER]:${NC}"

read name

echo -e "${yellow}Enter your commit message [ENTER]:${NC}"

read message

touch README.md
sudo git init
sudo git add README.md
git config --global user.name "djoq"
git config --global user.email danieljoquinn@gmail.com
git commit --amend --reset-author
sudo git commit -m "$message"
sudo git remote add -f origin https://github.com/djoq/"$name"
sudo git add . -f
sudo git status
sudo git commit -m "$message"
sudo git push -f origin master
