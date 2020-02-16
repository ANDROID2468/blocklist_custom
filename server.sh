#!/bin/bash
#By ANDROID2468

sudo -v
# Keep-alive: update existing sudo time stamp if set, otherwise do nothing.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

echo "Welcome to the host update server!"
while :
do
  echo "Hi!"
  rm -f blacklist
  echo "Downloading costom blacklist file..."
  curl -O https://raw.githubusercontent.com/ANDROID2468/blocklist_custom/master/blacklist
  echo "now running hosts updater"
  rm -f out/hosts
  python updateHostsFile.py
  echo "copying host file to out folder"
  cp /etc/hosts ~/hosts/out/
  echo "done, see ya in a week!"
	echo "If you want to kill me, press [CTRL+C].."
	sleep 604800
done
