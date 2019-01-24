#! /bin/bash

for i in $(ls -d */); do
	cd $i
	pwd
	if [ -d ".git" ]; then
		git pull
	fi
	if [ -d ".hg" ]; then
		hg pull
	fi
	cd ..
done
