#!/bin/bash

if [ $# -lt 2 ] ;
then
	echo -e Two arguments are needed to use this app
	echo -e First Arg: /Directory, Second Arg: STRING
	exit 1
elif [ ! -d $1 ];
then
	echo -e The first argument does not represent a directory on the filesystem
	exit 1
else
	echo The number of files are $(grep -lr $2 $1 | wc -l) and the number of matching lines are $(grep -or $2 $1 | wc -l)
	

fi
