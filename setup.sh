#!/bin/bash
# By Jakub Burzyński 2017
# Quickly setup basic set of software after fresh installation.


# Make sure this script is not run with sudo
if [ $(id -u) -eq 0 ]
then
    echo "ERROR: This script should not be run as sudo or root."
    exit
fi

#Generate SSH key if it doesn't exist
if [ ! -r "$HOME/.ssh/id_rsa" ]
then
    ssh-keygen -N '' -t rsa -f ~/.ssh/id_rsa
    ssh-add ~/.ssh/id_rsa
fi


# vim plugins
read -p "Want to install Vim plugins (y/n)? " answear
if [ $answear = 'y' ]
then
    mkdir -p ~/.vim/autoload ~/.vim/bundle && curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
    git clone https://github.com/scrooloose/nerdtree.git ~/.vim/bundle/nerdtree
    git clone https://github.com/majutsushi/tagbar.git ~/.vim/bundle/tagbar
    git clone https://github.com/ctrlpvim/ctrlp.vim.git ~/.vim/bundle/ctrlp.vi
    git clone https://github.com/ap/vim-buftabline.git ~/.vim/bundle/vim-buftabline
    git clone https://github.com/vim-airline/vim-airline.git ~/.vim/bundle/vim-airline
fi

echo Complete.

DISTRO=`cat /etc/issue | awk '{ print $1 }'`

# Ubuntu
if [ $DISTRO = "Arch" ]
then 
    echo "Arch linux detected!"
    sudo pacman -Syu
    exit
elif [ $DISTRO = "Ubuntu" ]
then            
    echo "Ubuntu linux detected!"
    exit

    # prepare repositories for clang-4.0
    wget -O - http://apt.llvm.org/llvm-snapshot.gpg.key | sudo apt-key add -
    sudo apt-add-repository "deb http://apt.llvm.org/xenial/ llvm-toolchain-xenial-4.0 main"
    sudo apt-add-repository "deb http://apt.llvm.org/xenial/ llvm-toolchain-xenial-4.0 main"

    # Update and upgrade
    sudo apt-get update -y

    # Install useful stuff
    sudo apt-get install -y subversion      # another CVS
    sudo apt-get install -y vim             # the best in-terminal editor
    sudo apt-get install -y sqlitebroweser  # sql browser GUI
    sudo apt-get install -y nmap            # nmap network tool
    sudo apt-get install -y ctags           # Exuberant Ctags for Vim
    sudo apt-get install -y tree            # tree command
    sudo apt-get install -y mc              # midnight commander
    sudo apt-get install -y meld            # meld diff tool
    sudo apt-get install -y cmake           # cross platform build system
    sudo apt-get install -y gparted         # disk partitioning tool
    sudo apt-get install -y valgrind
    sudo apt-get install -y cloc

    #sudo apt-get install -y clang-4.0 clang-tidy-4.0
    #sudo apt-get install -y qtcreator       # dev IDE

    # libraries
    sudo apt-get install -y libsfml-dev
    sudo apt-get install -y libboost-dev-all
    sudo apt-get install -y libgtest-dev
fi

echo System setup complete.
