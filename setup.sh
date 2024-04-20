#!/bin/bash

cp ./.zshrc ~/;

mkdir ~/.config/kitty;
cp ./kitty.conf ~/.config/kitty/kitty.conf;

mkdir ~/.config/lvim;
cp ./lvim/config.lua ~/.config/lvim/;

mkdir ~/.config/rofi/
cp ./rofi/* ~/.config/rofi/

cp ./swayfx/Background.png ~/Pictures/

mkdir ~/.config/sway
cp ./swayfx/config ~/.config/sway/

mkidr ~/.config/waybar
cp ./waybar/* ~/.config/waybar

mkdir ~/.config/sway-interactive-screenshot
cp ./sway-interactive-screenshot/config.toml ~/.config/sway-interactive-screenshot/

mkdir ~/.config/spicetify/
cp ./spotify/config-xpui.ini ~/.config/spicetify/config-xpui.ini
mkdir ~/.config/spicetify/Themes/Sleek/
cp ./spotify/color.ini ~/.config/spicetify/Themes/Sleek/color.ini



