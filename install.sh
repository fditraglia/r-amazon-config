#!/bin/bash

cd ~ # in case I run this from the wrong directory

# Clone Git Repos 
git clone https://github.com/fditraglia/dotfiles.git # my dotfiles
git clone https://github.com/fditraglia/selectr.git # Bayesian variable selection

# Install R (Assumes Ubuntu 14.04)
sudo apt-get update
sudo apt-get install -y  r-base

# Install R Packages
sudo apt-get install -y r-cran-rcpp
sudo apt-get install -y r-cran-rcpparmadillo



# Symlink dotfiles from git repo
ln -s ~/dotfiles/vimrc ~/.vimrc
mv ~/.bashrc ~/.bashrc.bak
ln -s ~/dotfiles/bashrc ~/.bashrc
ln -s ~/dotfiles/inputrc ~/.inputrc
