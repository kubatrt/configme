#!/bin/bash
# By Jakub Burzynski 2017
# This script was created to automate setup and configure fresh Linux installation.

USER=`whoami | awk '{ print $1 }'`
USER_HOME=/home/$USER
EXEC_PATH=`dirname $0`

echo executing path: $EXEC_PATH
echo current user home: $USER_HOME

if [ ! -d $USER_HOME ]; then
    echo "ERROR: Path doesn't exists $USER_HOME"
    exit 1
fi


# Setup configuration files
files=(".vimrc" ".bashrc" ".gitconfig" ".screenrc")

echo Configuration files on the list: ${files[*]}

for file in ${files[@]}
do
	read -p "Copy file $file to your directory (y/n)? " choice
	case "$choice" in 
		y|Y ) cp $EXEC_PATH/$file $USER_HOME/$file ;;
		n|N ) ;;
		* ) echo "invalid";;
	esac
done

# run setup.sh

# Install applications
# git, cmake, vim, qtcreator, screen

# Install libraries
# libsfml-dev libboost-dev-all libgtest-dev (build by self with shared libs)
