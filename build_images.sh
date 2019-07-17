#!/bin/bash

# Script that enters each OS directory and builds a docker image for it.

cd Ubuntu-18.04
docker build -t isa/ubuntu18.04 .
cd ..

cd Debian-8
docker build -t isa/debian8 .
cd ..

cd Debian-9
docker build -t isa/debian9 .
cd ..

cd Debian-7
docker build -t isa/debian7 .
cd ..

cd Windows
docker build -t isa/windows .
cd ..
