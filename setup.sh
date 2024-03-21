#!/bin/bash

# Install Oh My Zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Install Home Brew
# /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
# ZSHRC="$HOME/.zshrc"
# echo 'eval $(/opt/homebrew/bin/brew shellenv)' >> $ZSHRC
# source $ZSHRC

# Brew Cask Version 
# brew install cask
# brew tap -y homebrew/cask-versions

# Install Fonts
brew tap homebrew/cask-fonts
brew install font-hack-nerd-font

# Install ZSH Plugins
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
echo "source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >> ${ZDOTDIR:-$HOME}/.zshrc
source ./zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Install Anaconda 
# brew install -y anaconda
# conda init zsh
# conda deactivate
# conda update conda
# conda update anaconda
# conda update -n base -c defaults conda
# conda create -n dev python=3.11.7 anaconda -y 
conda activate dev
conda install -c pyviz hvplot geoviews
conda install -c conda-forge geoviews
conda install -c conda-forge findspark
pip install python
pip install census
pip install citipy
pip install "splinter[selenium4]"
pip install html5lib
pip install lxml
brew install openjdk
pip install -y pyspark==3.4.0
conda install -c conda-forge pyarrow
conda install -c conda-forge fastparquet
%env SPARK_LOCAL_HOSTNAME=localhost
conda update --all
conda install --c conda-forge pygwalker
pip install --upgrade jupyterlab ipywidgets
pip install --upgrade gw-dsl-parser==0.1.8a0 duckdb==0.9.2 segment-analytics-python==2.2.3
jupyter labextension install @jupyter-widgets/jupyterlab-manager
pip install flask_cors
conda install pytorch::pytorch
conda install anaconda::tensorflow
conda install conda-forge::seaborn
pip install altair
pip install altair_viewer
conda install conda-forge::joblib
conda install conda-forge::graphviz
pip install graphviz
conda install conda-forge::theano
conda install conda-forge::beautifulsoup4
conda install conda-forge::pillow
conda install conda-forge::bokeh
brew install graphviz
conda install conda-forge::pygwalker
conda install conda-forge::r-base

# Replace the zshrc file
mkdir ~/dev
git clone https://github.com/ericjjohnson2/mac_setup ~/dev
yes | cp -rf ~/dev/mac_setup/.zshrc ~/.zshrc
source ~/.zshrc

# Misc
brew install  --cask google-chrome
brew install chrome-devtools
brew install  --cask libreoffice
brew install  --cask vlc
brew install  --cask visual-studio-code
brew install homebrew/cask-versions/firefox-developer-edition
brew install --cask brave-browser
brew install font-hack-nerd-font
brew install postgresql
brew install --cask pgadmin4
brew install chromedriver
brew tap mongodb/brew
brew update
brew install mongodb-community@6.0
brew install --cask r
brew install --cask rstudio
brew install --cask  microsoft-office/
# brew install --cask  adobe-creative-cloud
# brew install --cask  cleanmymac
# brew install --cask textmate
# brew install --cask bartender
brew install --cask eclipse-installer
brew install --cask google-drive