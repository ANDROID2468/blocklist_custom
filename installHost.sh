#!/bin/bash
#By ANDROID2468

rm -f blacklist
echo "Downloading costom blacklist file..."
curl -O https://raw.githubusercontent.com/ANDROID2468/blocklist_custom/master/blacklist
echo "now running hosts updater"
python updateHostsFile.py
echo "Done!"
