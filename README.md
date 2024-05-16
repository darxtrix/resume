Resume
======

My [resume](http://darxtrix.in/resume) :green_heart:

## Instructions
```shell
Install `rbenv` to install different versions of ruby on the system
$ brew install rbenv 

Check the directory where gems are installed at, also turn of the gem documentation downloading
$ gem env home # this should depend on the ruby used 

$ git clone <>
$ cd resume/
$ rbenv local # choose the desired ruby version 
$ gem install jekyll
$ jekyll build 
$ open index.html

After making changes, 
$ ./publish.sh
```