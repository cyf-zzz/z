#!/bin/bash
echo "kali" | sudo -Sv
sudo mv /etc/apt/sources.list /etc/apt/sources.list_bak

contents="deb https://mirrors.ustc.edu.cn/kali kali-rolling main non-free contrib
deb-src https://mirrors.ustc.edu.cn/kali kali-rolling main non-free contrib"

echo "$contents" | sudo tee /etc/apt/sources.list > /dev/null &&
sudo chmod 644 /etc/apt/sources.list &&
sudo apt update &&
sudo apt install dirsearch -y &&
sudo apt install feroxbuster -y &&
sudo apt install sublist3r -y