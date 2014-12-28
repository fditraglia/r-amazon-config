#!/bin/bash

cd ~ # in case I run this from the wrong directory

# Clone Git Repos 
git clone https://github.com/fditraglia/dotfiles.git # my dotfiles
git clone https://github.com/fditraglia/selectr.git # Bayesian variable selection


# Symlink dotfiles from git repo
ln -s ~/dotfiles/vimrc ~/.vimrc
mv ~/.bashrc ~/.bashrc.bak
ln -s ~/dotfiles/bashrc ~/.bashrc
source .bashrc 

# Install R (Assumes Ubuntu 14.04)
sudo add-apt-repository "deb http://cran.rstudio.com/bin/linux/ubuntu trusty/" # ignore the error "sudo: unable to resolve host"
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-key E084DAB9
sudo apt-get update
sudo apt-get install -y  r-base

# Make R packages directory writeable
sudo chmod a+w /usr/local/lib/R/site-library

# Install R packages
R CMD BATCH install-r-packages.R
