# Readme

This repo allows you to install Idris on an Ubuntu 18.04 VM with source alongside and buildable.

Prerequisites:
* Vagrant
* VirtualBox (any Vagrant provider should do, but this has only been tested with VirtualBox)

You will want to add this to your bashrc to get all the right things on your PATH:

```sh
export PATH="/home/vagrant/.cabal/bin:/home/vagrant/.local/bin:${PATH}"
```
