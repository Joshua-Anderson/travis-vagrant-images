#!/bin/bash
# Downloads and installs virtualbox

SCRIPTDIR=$(dirname $0)
mkdir -p $SCRIPTDIR/../downloads
curl -o $SCRIPTDIR/../downloads/virtualbox.dmg 'http://dlc.sun.com.edgesuite.net/virtualbox/4.3.14/VirtualBox-4.3.14-95030-OSX.dmg'
hdiutil mount $SCRIPTDIR/../downloads/virtualbox.dmg
sudo installer -package /Volumes/VirtualBox/VirtualBox.pkg -target "/Applications"
