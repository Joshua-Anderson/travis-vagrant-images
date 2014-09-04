#!/bin/bash
# Downloads and installs travis-cookbooks

SCRIPTDIR=$(dirname $0)
TRAVIS_COOKBOOK_REV=$(cat $SCRIPTDIR/../travis-cookbook-rev)
mkdir -p $SCRIPTDIR/../downloads
curl -o $SCRIPTDIR/../downloads/travis-cookbooks.tar.gz -L "https://github.com/travis-ci/travis-cookbooks/archive/${TRAVIS_COOKBOOK_REV}.tar.gz"
mkdir -p $SCRIPTDIR/../cookbooks
tar -xf $SCRIPTDIR/../downloads/travis-cookbooks.tar.gz --strip 1 -C $SCRIPTDIR/../cookbooks
