#!/bin/bash
# Downloads and installs Vagrant

SCRIPTDIR=$(dirname $0)
mkdir -p $SCRIPTDIR/../downloads
curl -o $SCRIPTDIR/../downloads/vagrant.dmg -L 'https://dl.bintray.com/mitchellh/vagrant/vagrant_1.6.4.dmg'
hdiutil mount $SCRIPTDIR/../downloads/vagrant.dmg
sudo installer -package /Volumes/Vagrant/Vagrant.pkg -target "/"
