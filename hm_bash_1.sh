#!/bin/bash
mkdir ~/homework_bash
cd ~/homework_bash/
mkdir subdir1 subdir2 subdir3
cd subdir1/
touch fil1.txt fil2.txt fil3.txt filjson1.json filjson2.json
mkdir subdir1_1 subdir1_2 subdir1_3
ls -la
mv fil1.txt ../subdir2 
mv fil2.txt subdir1_1/fil_new2.txt