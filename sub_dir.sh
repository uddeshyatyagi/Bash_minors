#!/bin/bash
echo "Enter the project name:"
read projectname

mkdir $projectname
echo "Root folder created successfully!!!"

cd $projectname
mkdir WEB_D
mkdir ML-AI
touch readme.md

cd WEB_D
touch main.html
touch main.css
touch main.js

cd ../
cd ML-AI
touch main.py
touch main.json
cd ../

mkdir images

echo "Files ready,happy coding :P"
