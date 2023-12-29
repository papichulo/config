#!/bin/bash

# Preparing a new MAC for development

#Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
(echo; echo 'eval "$(/opt/homebrew/bin/brew shellenv)"') >> ~/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"

#Install Warp from Homebrew
brew install --cask warp

#Install ZSH from Homebrew
brew install zsh

#Define HomeBrew's ZSH as Default Shell
chsh -s /opt/homebrew/bin/zsh

#Install OH-My-ZSH
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended

#Install PowerLevel10k
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

#Copy .zshrc file and 

curl -o ~/.zshrc "https://raw.githubusercontent.com/papichulo/config/main/.zshrc"
curl -o ~/.p10k.zsh "https://raw.githubusercontent.com/papichulo/config/main/.p10k.zsh"

#TODO Install IntelliJ&Jetbrains toolbox

#Install VsCode, Discord & Firefox from Homebrew
brew install --cask visual-studio-code
brew install --cask discord
brew install --cask firefox
#Install Nvm and Node 18
brew install nvm
nvm install 18
#Install Java 17 OpenJDK
brew install openjdk@17
#Install Orbstack for Docker
brew install orbstack

#install AppStore CLI
brew install mas

#Install Apps From AppStore
#Magnet
mas install 441258766
#Whatsapp
mas install 1147396723
#Signal
mas install 874139669
#Slack
mas install 803453959
