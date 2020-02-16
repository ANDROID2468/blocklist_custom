#!/bin/bash
#blocklist-addon_init

cd ~/
ls
read -p "did you aready git clone  StevenBlack / hosts? [y,n] " -n 1 -r
echo    # (optional) move to a new line
if [[ $REPLY =~ ^[Nn]$ ]]
then
    git clone https://github.com/StevenBlack/hosts.git
fi


cp -r blocklist_custom/* hosts/
cd ~/hosts
rm -f init.sh
echo done!
