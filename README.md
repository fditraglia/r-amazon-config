r-amazon-config
===============

This is a bash script that configures my preferred R development environment on a bare Amazon EC2 instance running Ubuntu 14.04.
Some slight changes are needed for different versions of Ubuntu.

Logging Into Your Instance
---------------------------
1. Configure your instance and generate and save your keyfile. 
Suppose it's called ``mykey.pem``.
2. Save your keyfile to ``~/.ssh/``. You may need to change the permissions with ``chmod 400 mykey.pem``
3. Get the Public DNS for your instance from amazon.
It's something long and fairly complicated so I'll refer to it here as ``instance-public-DNS``
4. Log into the instance via ``ssh``. On this machine your username is ``ubuntu`` so the command is ``ssh -i ~/.ssh/mykey.pem ubuntu@instance-public-DNS``

Usage
-----
All you need to do is install git, clone the repo, make the script executable and run it:
```
sudo apt-get
git clone https://github.com/fditraglia/r-amazon-config.git
chmod 755 /r-amazon-config/install.sh
./r-amazon-config/install.sh
```

Using This Script
-----------------
First make the script executable with ``chmod 755 /r-amazon-config/install.sh`` then run it from ``~`` using ``./r-amazon-config/install.sh``i
Now you're set to go!

What does this script do?
-------------------------
Sets up my dotfiles, installs R, etc.

Helpful Links
-------------
- [AWS Documentation] (http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/AccessingInstancesLinux.html)
- [R on Amazon EC2](http://www.stat.yale.edu/~jay/EC2/CreateFromScratch.html)
- [R on Ubuntu](http://cran.r-project.org/bin/linux/ubuntu/README)
