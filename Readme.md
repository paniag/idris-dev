# Readme

This repo allows you to install Idris on an Ubuntu 18.04 VM with source alongside and buildable.

Prerequisites:
* Vagrant
* VirtualBox (any Vagrant provider should do, but this has only been tested with VirtualBox)

You will want to add this to your bashrc to get all the right things on your PATH:

```sh
export PATH="/home/vagrant/.cabal/bin:/home/vagrant/.local/bin:${PATH}"
```

The binary built from source can be found at

```sh
/home/vagrant/src/idris/dist-newstyle/build/x86_64-linux/ghc-8.0.2/idris-1.3.2/build/idris/idris
```
