# pry's arch install

## Start with a Guided Arch Install
```
iwctl # to set up wifi

# inside of iwctl
device list
station *device* scan
station *device* get-networks
station *device* connect *SSID*

archinstall # this will guide you through the rest of the arch install process
```
packages to install during archinstall: `networkmanager`

## setting up wifi
```sh
sudo pacman -S networkmanager
systemctl enable NetworkManager
systemctl start NetworkManager
nmtui # activate wifi!!!
```

## set up i3-gaps
```sh
sudo pacman -S i3-gaps dmenu i3lock i3status gtk3 alacritty feh
```

## pywal
```sh
sudo pacman -S python-pywal
```

## install yay
```sh
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
```

## install cronie
```sh
sudo pacman -S cronie
systemctl enable cronie
systemctl start cronie
```

## set up audio
```sh
sudo pacman -S alsa-utils pulseaudio-alsa
```

## etc packages
```sh
sudo pacman -S man-db neovim vifm z stow
yay -S gohufont
```

## set up nvim
```sh
# install Vundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
```

## power management
```sh
sudo pacman -S tlp
sudo pacman -S tp_smapi acpi_call # for ThinkPads only

sudo systemctl enable tlp
sudo systemctl start tlp
```

## set up firewall
```sh
sudo pacman -S ufw
sudo systemctl enable ufw
sudo systemctl start ufw
```

## set up automounting USB
```udiskiesh
sudo pacman -S udisks2 udiskie
echo "udiskie &" >> ~/.xinitrc
```

## Progamming Languages
```sh
sudo pacman -S clang
sudo pacman -S go go-tools # NOTE: add GOPATH to your path
sudo pacman -S jdk-openjdk
sudo pacman -S nodejs npm
sudo pacman -S chicken
sudo pacman -S rustup
rustup default stable

sudo pacman -S texlive-core texlive-latexextra
```
