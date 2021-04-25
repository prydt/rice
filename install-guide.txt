# pry's arch install

## setting up wifi
```sh
pacman -S networkmanager
systemctl enable NetworkManager
systemctl start NetworkManager
nmtui # activate wifi!!!
```

## set up i3-gaps
```sh
pacman -S i3-gaps i3lock i3status lightdm lightdm-gtk-greeter alacritty
echo "exec i3" > ~/.xinitrc
```

## pywal
```sh
pacman -S python-pywal
```

## install yay
```sh
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
```

## etc packages
```sh
pacman -S man-db neovim
yay -S gohufont
```
