#!/bin/bash
source $PWD/scripts/helpers.sh

if ! command_exists yarn ; then
  print "Installing yarn"
  brew install yarn
fi

YARN_VERSION="$(yarn --version)"

print "YARN Version: $YARN_VERSION"

printf "Installing globals"
yarn global add nodemon updtr serverless > /dev/null
echo " ✓"
