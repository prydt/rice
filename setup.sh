#!/bin/sh

# run in this directory after installing arch and connecting to wifi

# TODO remove after testing stow setup
# copy all dotfiles
# cp .bash_profile ~
# cp .bashrc ~
# cp .editorconfig ~
# cp .gitconfig ~
# cp .vimrc ~
# cp .xinitrc ~
# cp -r .emacs.d ~
# cp -r .config ~
# copy all dotfiles
# cp -r \.* ~

sudo pacman -S i3-gaps i3lock i3status dmenu feh gtk3 alacritty python-pywal alsa-utils pulseaudio-alsa man-db neovim vifm z curl noto-fonts firefox stow zathura zathura-pdf-mupdf zathura-djvu

# symlink all dotfiles
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

yay -S gohufont

# install vundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

reboot
