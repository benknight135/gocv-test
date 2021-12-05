#!/bin/bash

# exit on command failure
set -e

SCRIPT_PATH="$( cd "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P )"

apps=( main stream )
for APP in "${apps[@]}"
do
	cd $SCRIPT_PATH/$APP && go get -v -t -d ./... && echo building $APP... && go install .
done

exit 0