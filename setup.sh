#!/bin/sh

# run in this directory after installing arch and connecting to wifi
sudo pacman -S --needed - < package_list.txt

rustup default stable

sudo systemctl enable tlp
sudo systemctl start tlp

sudo systemctl enable ufw
sudo systemctl start ufw

sudo powertop --calibrate
sudo curl https://gist.githubusercontent.com/prydt/b4e2ec0ec90715c5f24adb0f8d01f72a/raw/165c0001d1186db6de356c80152d67cfe08d87ad/powertop.service > /etc/systemd/system/powertop.service

sudo systemctl enable powertop
sudo systemctl start powertop

# symlink all dotfiles
rm ~/.bashrc ~/.bash_profile
stow -t ~ dotfiles

# set wallpaper
curl https://wallpapercave.com/wp/wp4676582.jpg > ~/wallpaper.jpg
wal -i ~/wallpaper.jpg

# install yay
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
cd ..
rm -rf yay

yay -S gohufont informant

# install vundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
nvim +PluginInstall +qall

reboot
