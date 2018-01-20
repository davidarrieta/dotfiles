# Claudio D. Arrieta's ↴

```
              ▄▄                         ▄▄▄▄      ██     ▄▄▄▄                         
              ██              ██        ██▀▀▀      ▀▀     ▀▀██                         
         ▄███▄██   ▄████▄   ███████   ███████    ████       ██       ▄████▄   ▄▄█████▄ 
        ██▀  ▀██  ██▀  ▀██    ██        ██         ██       ██      ██▄▄▄▄██  ██▄▄▄▄ ▀ 
        ██    ██  ██    ██    ██        ██         ██       ██      ██▀▀▀▀▀▀   ▀▀▀▀██▄ 
        ▀██▄▄███  ▀██▄▄██▀    ██▄▄▄     ██      ▄▄▄██▄▄▄    ██▄▄▄   ▀██▄▄▄▄█  █▄▄▄▄▄██ 
          ▀▀▀ ▀▀    ▀▀▀▀       ▀▀▀▀     ▀▀      ▀▀▀▀▀▀▀▀     ▀▀▀▀     ▀▀▀▀▀    ▀▀▀▀▀▀  
```

## Dotfiles? How do you eat that?

It's been said of every console user: 
> _"you are your dotfiles."_

In [xero's](https://github.com/xero/dotfiles) words:

In the unix world programs are commonly configured in two different ways, via shell arguments or text based configuration files. 
Programs with many options like window managers or text editors are configured on a per-user basis with files in your home directory `~`. 
In unix-like operating systems any file or directory name that starts with a period or full stop character is considered hidden, and in a default view will not be displayed, thus the name dotfiles. 

And in [ayekat's](https://github.com/ayekat/dotfiles) words:

This is my collection of user/application settings ("dotfiles") and personal scripts. They are mostly adapted to my personal needs, and some scripts make a few assumptions about the environment that may not necessarily be considered "standard", so **it's not recommended** to just copy-paste them as-is.

Nevertheless, I try to keep them as clean and non-WTF as possible, and people are invited to take a look at them, get ideas for their own dotfiles, and drop comments, suggestions, questions and bug reports if something seems odd.

## Ok, your dotfiles are nice but i want to learn from other people; Where can i get other dotfiles?

Here you will find A LOT of other people's dotfiles: 
* [Dotfiles.github.io](http://dotfiles.github.io/) 
* [Arch Linux wiki page for dotfiles](https://wiki.archlinux.org/index.php/Dotfiles)


## What's included?

* Shell prompt: `zsh` with `oh-my-zsh` → [Zsh](http://www.zsh.org/) - [Oh my zsh](https://github.com/robbyrussell/oh-my-zsh)
* Bar: `polybar` → [Polybar](https://github.com/jaagr/polybar/)
* Browser: `firefox` → [Firefox](https://www.mozilla.org/en-US/firefox/new/)
* Compositor: `compton` → [Compton](https://github.com/chjj/compton)
* File Manager: `ranger` `nemo` → [Ranger](https://github.com/ranger/ranger) - [Nemo](https://github.com/linuxmint/nemo)
* Font: `hack` → [Hack](https://github.com/source-foundry/Hack)
* Media player: `mpv` → [Mpv](https://github.com/mpv-player/mpv)
* Music player: `ncmpcpp` → [Ncmpcpp](https://github.com/arybczak/ncmpcpp)
* Program launcher: `rofi` → [Rofi](https://github.com/DaveDavenport/rofi)
* PDF viewer: `zathura` → [Zathura](https://github.com/pwmt/zathura)
* Text editor: `vim` and `leafpad` → [Vim](https://github.com/vim/vim) - [Leafpad](http://tarot.freeshell.org/leafpad/)
* Terminal emulator: `rxvt-unicode-256xresources` → [Urxvt-256xresources](https://aur.archlinux.org/packages/rxvt-unicode-256xresources/)
* Window manager: `i3-gaps` → [i3 Gaps](https://github.com/Airblader/i3)
* Image viewer: `feh` and `viewnior` → [Feh](https://github.com/derf/feh) - [Viewnior](https://github.com/hellosiyan/Viewnior)

### Other things i use and recommend

* For desktop blurrying: Ganifladi's excellent `blurme` → [Blurme](https://github.com/ganifladi/blurme)
* To replace `less` and `cat` with `vim` and prove to the world that you're a fanboy of Vim: `vimpager` and `vimcat` → [Vimpager & vimcat](https://github.com/rkitover/vimpager)
* Display Manager: `lightdm` with the theme `litarvan` → [Lightdm](https://freedesktop.org/wiki/Software/LightDM/) - [Litarvan](https://github.com/Litarvan/lightdm-webkit-theme-litarvan)
* These two packages are necessary for `ncmpcpp` to work: `mpd` with `mpc` → [MPD](https://github.com/MusicPlayerDaemon/MPD) - [Mpc](https://www.musicpd.org/clients/mpc/)
* Commandline screen capture utility: `scrot` → [Scrot](https://github.com/dreamer/scrot)
* To have icons in `polybar`: `ttf-font-awesome-4` → [Font Awesome 4](https://aur.archlinux.org/packages/ttf-font-awesome-4/) **Font Awesome 5 does not work properly with Polybar. Or at least it doesn't work like Font Awesome 4.**
* The best `pacaur` replacement: `trizen` → [Trizen](https://github.com/trizen/trizen) - **Only for Arch Linux users.**
* To vote for all your packages downloaded from the AUR: `aurvote` → [AURvote](https://github.com/archlinuxfr/aurvote) 
Use it this way: ```$ aurvote -v $(pacman -Qqm) ``` - **Only for Arch Linux users.**
* To retrieve and filter the latest Pacman mirror list and the best servers available: `reflector` → [Reflector](https://xyne.archlinux.ca/projects/reflector/) - **Only for Arch Linux users.**

## Installation

### Before installing, be sure to read useful cowboy [gently-worded note](https://github.com/cowboy/dotfiles#heed-this-critically-important-warning-before-you-install) and this excellent article by [Anish Athalye](https://github.com/anishathalye): [Dotfiles are NOT meant to be forked](http://www.anishathalye.com/2014/08/03/managing-your-dotfiles/). That said, let's go with the installation:

0. **Learn how to organize your files well:** You must learn how to arrange your files right so that `stow` can link them correctly, here are some helpful links:
[Using GNU Stow to manage your dotfiles](http://brandon.invergo.net/news/2012-05-26-using-gnu-stow-to-manage-your-dotfiles.html) - [Managing dotfiles with GNU stow](https://alexpearce.me/2016/02/managing-dotfiles-with-stow/)

1. **Install GNU Stow:** GNU Stow is available for all GNU+Linux distros and most other unix-like distributions via your package manager.

- `sudo pacman -S stow`
- `sudo apt-get install stow`
- `brew install stow`


2. **Clone this repo:**

```sh
$ git clone https://github.com/davidarrieta/dotfiles.git ~/dotfiles && cd ~/dotfiles
```

3. **Symlink with GNU Stow all the folders you want to your home:** To install most of my dotfiles you execute `stow` with the folder name as the only argument. 
For example, to install my `i3` and my `zshrc` config use the command:

```sh
$ stow i3 
$ stow zsh 
$ stow whatever-dotfile-you-want
```
This will symlink files to `~/.config/i3/` `~/.zshrc` and various other places.


## Current workflow since January 6, 2018.

#### Clean
![Clean](https://github.com/davidarrieta/dotfiles/blob/master/screenshots/2018-01-05-1515172280_screenshot_1360x768.png)

#### [TTY-Clock](https://github.com/xorg62/tty-clock), [Cava](https://github.com/karlstav/cava) and [neofetch](https://github.com/dylanaraps/neofetch)
![TTY-Clock, Cava and neofetch](https://github.com/davidarrieta/dotfiles/blob/master/screenshots/2018-01-05-1515171432_screenshot_1360x768.png)

#### [Pipes.sh](https://github.com/pipeseroni/pipes.sh), [Ncmpcpp](https://github.com/arybczak/ncmpcpp), [TTY-Clock](https://github.com/xorg62/tty-clock) and a bit of my [.vimrc](https://github.com/davidarrieta/dotfiles/blob/master/vim/.vimrc)
![Pipes.sh, Ncmpcpp, TTY-Clock and a bit of my .vimrc](https://github.com/davidarrieta/dotfiles/blob/master/screenshots/2018-01-05-1515171601_screenshot_1360x768.png)

#### [DuckDuckGo](www.duckduckgo.com) and [cava](https://github.com/karlstav/cava)
![DDG and cava](https://github.com/davidarrieta/dotfiles/blob/master/screenshots/2018-01-05-1515171832_screenshot_1360x768.png)


## Thanks to:

This repository is strongly inspired by the work of some people, and would not have existed if it were not for:

* [Xero](https://github.com/xero) 
* [Mohabaks](https://mohabaks.github.io/)
* [Samuel Walladge](https://swalladge.id.au/)
* All the *ricers* who inspired me from [unixporn](https://www.reddit.com/r/unixporn/).
* And all the people i might have stolen scripts or configs :grin:

## LICENSE

```
This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.
```

This repository contains both original and third party content. Content can be assumed to be original unless stated otherwise. Original content is copyright © 2018 Claudio D. Arrieta , and can be used and distributed under the terms of the GPLv3. All third party content is copyright their respective authors and bound by their original licenses.

All attempts have been made to identify third party content within the repository, with sources and attribution given where necessary. Please contact me if any issues are discovered.
