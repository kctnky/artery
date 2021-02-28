#!/bin/bash

# Run this script in the root folder of artery!

if [ ! -d "./build" ]
then
    mkdir ./build
fi

cd ./build
cmake ..
cmake --build .
cd ..
