#!/bin/bash

USER=`who am i | awk '{ print $1 }'`
USER_HOME=/home/$USER
EXEC_PATH=`dirname $0`

if [ ! -d $USER_HOME ]; then
    echo "ERROR: Path doesn't exists $USER_HOME"
    exit 1
fi



cp $USER_HOME/.vimrc $EXEC_PATH/.vimrc
cp $USER_HOME/.bashrc $EXEC_PATH/.bashrc
cp $USER_HOME/.gitconfig $EXEC_PATH/.gitconfig  
