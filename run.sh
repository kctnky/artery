#!/bin/bash

# Run this script in the root folder of artery!

if [ $# -ne 1 ]
then
    echo "Usage: ./run.sh <scenario>"
	exit 1
fi

rm -rf "./scenarios/${1}/results/*" &> /dev/null

cd ./build
cmake --build . --target "run_${1}"
cd ..
