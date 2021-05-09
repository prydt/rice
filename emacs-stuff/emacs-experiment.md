# My Foray into Emacs
> A Over-the-top Emacs Install

## Why?
I love vi. Neovim has become my go-to editor for pretty much everything. I use vim-keybindings in pretty much all the programs that I can use them in.

So why install emacs, the bloated operating system lacking a decent text editor?

My main reason for trying out emacs is because I am starting my summer vacation and I have been thinking about using Org-mode for notetaking. Aside from just notetaking, I also have noticed that I often keep adding IDE-like plugins to my vim config and I'm wondering if I could just use Doom Emacs as a sort of extremely customizable and general IDE.

I'm trying emacs for notetaking, powerful IDE features, and because why not?

## The Philosophical Clash
The fundamental difference between vi and emacs are in the scope of what they want to accomplish. Vi is a simple text editor. Emacs wants to do more than just edit text. Emacs comes with tetris built-in... But it is also extremely feature-rich and has a healthy ecosystem of amazing plugins like org-mode, magit, and evil-mode.

## Installing (for Arch Linux)
1. Install the necessary packages
```sh
sudo pacman -S emacs irony-mode # NOTE: irony-server depends on clang, llvm, and cmake
```

2. Set up Doom Emacs
```sh
git clone --depth 1 https://github.com/hlissner/doom-emacs ~/.emacs.d
~/.emacs.d/bin/doom install
```

3. Add `~/.emacs.d/bin` to the PATH
4. Edit the Doom Emacs config however you wish. (For this part, I'll defer to my dotfiles)
5. Run `doom sync` to make sure your changes work with the rest of the system.

NOTE: This is just my temp DOOM Emacs install... am thinking about using Witchmacs to start now.
