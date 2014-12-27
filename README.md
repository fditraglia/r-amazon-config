r-amazon-config
===============

This is a bash script that configures my preferred R development environment on a bare Amazon EC2 instance running Ubuntu.

How To Get Up and Running
-------------------------
1. Configure your instance and generate and save your keyfile. 
Suppose it's called ``mykey.pem``.
2. Save your keyfile to ``~/.ssh/``. You may need to change the permissions with ``chmod 400 mykey.pem``
3. Get the Public DNS for your instance from amazon.
It's something long and fairly complicated so I'll refer to it here as ``instance-public-DNS``
4. Log into the instance via ``ssh``. On this machine your username is ``ubuntu`` so the command is ``ssh -i ~/.ssh/mykey.pem ubuntu@instance-public-DNS``
5. Install git: ``sudo apt-get install git`` (You won't need a password for sudo.)
6. Clone this repo: ``git clone https://github.com/fditraglia/r-amazon-config.git``
7. Run the script...


What does this script do?
-------------------------

Helpful Links
-------------
- [AWS Documentation] (http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/AccessingInstancesLinux.html)
- [R on Amazon EC2](http://www.stat.yale.edu/~jay/EC2/CreateFromScratch.html)
- [R on Ubuntu](http://cran.r-project.org/bin/linux/ubuntu/README)
