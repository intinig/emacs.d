.emacs.d
========

This is my configuration for emacs. It is (as of SHA: 3edb1c7bd6d3c82c572831751d89a9a732342fc9) the following features.

 * ag (silver searcher fast search)
 * autotest (ruby)
 * bundler (BROKEN)
 * coffee-mode
 * gist
 * go-mode
 * ido-ubiquitous
 * magit
 * markdown-mode
 * paredit
 * powerline
 * rspec-mode
 * ruby-compilation
 * rvm
 * smex
 * yaml-mode
 * zenburn-theme

Everything is based on dmitri/el-get to keep everything under control.

In addition to that everything is configured to be easy to use for people coming from Textmate (at least it was when I started working on this. I've been on Emacs for too long now :)).

files
-----

 * defaults.el - changes to default emacs configuration
 * el-get-user/* - configuration for packages installed via el-get
 * init.el - sets up the whole el-get system
 * interface.el - look and feel stuff
 * languages.el - configuration for programming languages modes. Eventually I plan to move most of this in el-get-user
 * system.el - system specific configuration, you should edit this to input your personal paths and stuff like that

installation
------------

Starting from a clean emacs, it should just suffice to replace your ~/.emacs.d with the repository you cloned and then start emacs.
