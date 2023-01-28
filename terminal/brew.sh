#!/bin/bash
# Use Homebrew to install:
# - iTerm2 
# - Jump
# - tmux
# - git
# - GitHub command line tool
# - rig for R environment management
# - R Studio
# - Google Cloud SDK
# - Neovim text editor
brew upgrade &&
brew install --cask iterm2 &&
brew install jump &&
brew install tmux &&
brew install git &&
brew install gh && 
brew tap r-lib/rig &&
brew install --cask rig &&
brew install --cask rstudio &&
brew install --cask google-cloud-sdk &&
brew install neovim
