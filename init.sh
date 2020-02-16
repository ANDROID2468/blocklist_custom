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


cp -r blocklist_custom/server.sh hosts/
cd ~/hosts
echo "making server.sh executable..."
chmod +x server.sh

read -p "do you want to delete the blocklist folder?(not needed anymore after running this command) [y,n] " -n 1 -r
echo    # (optional) move to a new line
if [[ $REPLY =~ ^[Yy]$ ]]
then
    echo "The blocklist folder will Self-destruct in 0 sec!"
    rm -rf ~/blocklist_costom/
    echo "BOOM!"
    echo "..."
fi

echo "done!"
