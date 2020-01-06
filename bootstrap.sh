#!/usr/bin/env bash

sudo apt-get update
sudo apt-get install -y build-essential git gcc vim cabal-install tmux libgmp-dev libffi-dev pkg-config
sudo apt-get install -y haskell-platform libncurses5-dev

# Install Stack
sudo apt-get install -y haskell-stack
sudo stack upgrade

# Install Cabal
sudo apt-get install -y cabal-install
cabal update
cabal install --force-reinstalls Cabal cabal-install
/home/vagrant/.cabal/bin/cabal --version
/home/vagrant/.cabal/bin/cabal update
/home/vagrant/.cabal/bin/cabal user-config update

# Install Idris
/home/vagrant/.cabal/bin/cabal install idris

# git clone idris & build v1.3.2
mkdir src
cd src
git clone https://github.com/idris-lang/Idris-dev.git idris
cd idris
git checkout v1.3.2
make build
