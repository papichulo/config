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

#TODO Install Java
#Install Node&NVM
#Install IntelliJ&Jetbrains toolbox
#Install Docker/OrbStack
#Install Signal

#Install VsCode from Homebrew
brew install --cask visual-studio-code

#install AppStore CLI
brew install mas

#Install Magnet From AppStore
mas install 441258766

#Install Whatsapp Desktop from AppStore
mas install 1147396723

#Install Signal from AppStore
mas install 874139669
