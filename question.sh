#!/bin/bash

read -p "Enter directory name: " name

# check if a file with the name exists
if [ -f "$name" ]; then
	echo "A file with that name exists"
	exit -1

elif [ -d "$name" ]; then
	echo "A directory with the same name exists"
	touch "$name"/submission1.txt "$name"/submission2.txt

else
	mkdir "$name"
	touch "$name"/submission1.txt "$name"/submission2.txt

fi
