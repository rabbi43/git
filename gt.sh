#!/data/data/com.termux/files/usr/bin/bash
sleep 2
#coded by fazle rabbi
#date:3February,2022
#colors>>

red="\e[91m"
ylw="\e[93m"
rset="\e[0m"

#main section

clear
sleep 1.0
git status
sleep 1.0
clear
read -p $'\e[91m Do you want to add files in stage:' opt
if [[ $opt == y || $opt == Y ]]; then
git add .
sleep 1.0
clear
echo -e "$ylw Files are successfuly staged"

sleep 2.0
clear
read -p $'\e[96m Type your commit name:' cmt
git commit -m "$cmt"
sleep 2.0
clear
echo -e "\e[91m Commited successfully!"
sleep 2.0
clear
echo -e "\n"
echo -e "\e[93m Your Current Git Status >> $red"
git status
else
echo "something went wrong!"
fi

read -p $'\e[92m Do you want to push?:\e[97m' psh
if [[ $psh == y || $psh == Y ]]; then
git branch -M main
git push -u origin main
sleep 2.0
clear
echo -e "\e[96m Code successfully pushed! "
else
echo "something went wrong!"
fi
