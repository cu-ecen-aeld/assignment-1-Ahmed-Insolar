#!/bin/bash
DIR_PATH=$(dirname $1)
FILE_NAME=$(basename $1)
set -e
if [ $# -lt 2 ] ;
then
	echo -e Two arguments are needed to use this app
	echo -e "First Arg: File's Path, Second Arg: File's content"
	exit 1
	
	
elif [ ! -d $DIR_PATH ];
then
	echo -e The file path directory is not exiting, a directory will be created
	mkdir -p $DIR_PATH || true
	if [ ! -d $DIR_PATH ];
	then
		echo Permission Denied1!
		exit 1
	fi
	echo -e $2 > $1 || true
	if [ ! -f $1 ];
	then
		echo Permission Denied2!
		exit 1
	fi
	
elif [ -d $DIR_PATH ];
then
	(echo -e $2 > $1 || true)
	if [ ! -f $1 ];
	then
		echo -e Permission Denied3!
		exit 1
	fi

fi
