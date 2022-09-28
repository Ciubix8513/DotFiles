#!/bin/bash
sudo pacman -S zsh;
chsh -s /usr/bin/zsh;
sh -c "$(wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)";
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions;
curl https://raw.githubusercontent.com/Ciubix8513/ArchSetupScripts/main/zshrc -o ~/.zshrc;


