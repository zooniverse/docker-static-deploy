#!/bin/bash -ex

if [ -z "$1" ] || [ -z "$2" ]
then
    echo "Usage: $0 <cmd> <repo>" 1>&2
    exit 1
fi

git clone https://github.com/$2.git /src/

cd /src/
npm install

npm run-script $1
