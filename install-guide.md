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

## setting up wifi
```sh
sudo pacman -S networkmanager
systemctl enable NetworkManager
systemctl start NetworkManager
nmtui # activate wifi!!!
```

## set up i3-gaps
```sh
sudo pacman -S i3-gaps i3lock i3status lightdm lightdm-gtk-greeter alacritty
echo "exec i3" > ~/.xinitrc
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
sudo pacman -S alsa-utils pulseaudio-alsa pavolume
```

## etc packages
```sh
sudo pacman -S man-db neovim vifm z
yay -S gohufont
```
