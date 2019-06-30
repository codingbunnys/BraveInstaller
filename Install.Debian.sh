#!/bin/bash
# By 1O_O
# Give Credit
# Discord: 1O_O#3135
# YT: https://bit.ly/mineblox
# Minecraft: 1O_O(Main) | 0J3(Alt)
# Roblox: me_DS
type zenity
if [[ $? == 1 ]]; then
  echo "Please install Zenity to continue."
else
  type pkexec
  if [[ $? == 1 ]]; then
    echo "Please install pkexec to continue."
  else
    zenity zenity --question --text="Do you want to Download&Install Brave?" --title="Download&Install Brave?"
    if [[ $? == 0 ]]; then
      echo '#!/bin/bash
curl -s https://brave-browser-apt-release.s3.brave.com/brave-core.asc | apt-key --keyring /etc/apt/trusted.gpg.d/brave-browser-release.gpg add -
source /etc/os-release
echo "deb [arch=amd64] https://brave-browser-apt-release.s3.brave.com/ $UBUNTU_CODENAME main" | tee /etc/apt/sources.list.d/brave-browser-release-${UBUNTU_CODENAME}.list
apt update
apt install brave-keyring brave-browser' > ~/TempRunAsSudo.sh
      chmod 755 ~/TempRunAsSudo.sh
      pkexec ~/TempRunAsSudo.sh
    fi
  fi
fi
