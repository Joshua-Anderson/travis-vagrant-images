#!/bin/bash
# Downloads and installs virtualbox
curl -o ../dowloads/virtualbox.dmg 'http://download.virtualbox.org/virtualbox/4.3.14/VirtualBox-4.3.14-95030-OSX.dmg'
hdiutil mount ../dowloads/virtualbox.dmg
