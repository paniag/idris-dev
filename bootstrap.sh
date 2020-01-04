#!/usr/bin/env bash

sudo apt-get update
sudo apt-get install -y build-essential git gcc vim cabal-install tmux libgmp-dev libffi-dev pkg-config
sudo apt-get install -y haskell-platform libncurses5-dev

# Install Stack
sudo apt-get install -y haskell-stack
sudo stack upgrade
export PATH="${HOME}/.local/bin:${PATH}"
echo 'export PATH="${HOME}/.local/bin:${PATH}"' >> ~/.bashrc

# Install Cabal
export PATH="${HOME}/.cabal/bin:${PATH}"
echo 'export PATH="${HOME}/.cabal/bin:${PATH}"' >> ~/.bashrc
sudo apt-get install -y cabal-install
cabal update
cabal install Cabal cabal-install
cabal --version
cabal update
cabal user-config update

# Install Idris
cabal install idris
