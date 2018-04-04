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
<br>

## Dotfiles? How do you eat that?

### In my odyssey to have the perfect dotfiles I have come across the profiles of many other people with the same objective and these two summaries of "what are dotfiles" are the ones I liked the most

#### In [Xero's](https://github.com/xero/dotfiles) words:

- In the \*nix world programs are commonly configured in two different ways, via shell arguments or text-based configuration files. Programs with many options like window managers or text editors are configured on a per-user basis with files in your home directory `~`. In unix-like operating systems any file or directory name that starts with a period or full stop character is considered hidden, and in a default view will not be displayed, thus the name dotfiles. 

It's been said of every console user: 
> _"You are your dotfiles."_

#### In [Ayekat's](https://github.com/ayekat/dotfiles) words:

- This is my collection of user/application settings ("dotfiles") and personal scripts. They are mostly adapted to my personal needs, and some scripts make a few assumptions about the environment that may not necessarily be considered "standard", so **it's not recommended** to just copy-paste them as-is.

- Nevertheless, I try to keep them as clean and non-WTF as possible, and people are invited to take a look at them, get ideas for their own dotfiles, and drop comments, suggestions, questions and bug reports if something seems odd.

#### And in my own words: 

You must already have a basic idea of what dotfiles are, so I won't focus on explaining what they are but how they differ from other dotfiles:

- My dotfiles are characterized by the fact that I try to be as minimalist and _non-bloated_ as possible, this can be confirmed by seeing with which tools I work on a daily basis (Vim, i3, Arch Linux, ncmpcpp, aurutils, rofi, zathura, pass, etc.) and the fact of how I use them and how I configure them to my liking. Clearly, there are going to be some exceptions to this rule (Oh my zsh, Firefox, LightDM, etc.) but I do what I can to also be as comfortable as possible. 
So, you can think of this repository as a little guide to build your own minimalist workflow (if you're one of those people who likes this), and if you're one of those people who hates minimalism, you might find something really useful if you know how to look.

## What's included?

|Software   |What i use   |Link to the project   |Link to my own configuration files (dotfiles) of that software   |
|---|---|---|---|
|Shell prompt  |`bash` and `zsh` with `oh-my-zsh` |[bash](https://www.gnu.org/software/bash/) - [zsh](http://www.zsh.org/) - [Oh my zsh](https://github.com/robbyrussell/oh-my-zsh) | [zsh](https://github.com/davidarrieta/dotfiles/blob/master/zsh/.zshrc) - [bash](https://github.com/davidarrieta/dotfiles/tree/master/bash) |
|Bar   |`polybar`   |[Polybar](https://github.com/jaagr/polybar/)   |[Polybar](https://github.com/davidarrieta/dotfiles/blob/master/polybar/.config/polybar/config)   |
|Window Compositor   |`compton`   | [Compton](https://github.com/chjj/compton)  |[Compton](https://github.com/davidarrieta/dotfiles/blob/master/compton/.config/.compton.conf)   |   |   |   |
|VCS | `git` | [git](https://git-scm.com/) | [git](https://github.com/davidarrieta/dotfiles/tree/master/git) |
|Launcher   |`rofi`   |[Rofi](https://github.com/DaveDavenport/rofi)   | [Rofi](https://github.com/davidarrieta/dotfiles/blob/master/rofi/.config/rofi/config)  |   |   |   |
|Music Player   |`ncmpcpp` with `mpc` and `mpd`   |[ncmpcpp](https://github.com/arybczak/ncmpcpp) - [mpd](https://github.com/MusicPlayerDaemon/MPD) - [mpc](https://www.musicpd.org/clients/mpc/)  | [ncmpcpp](https://github.com/davidarrieta/dotfiles/blob/master/ncmpcpp/.ncmpcpp/config) - [mpd](https://github.com/davidarrieta/dotfiles/blob/master/mpd/.mpd/mpd.conf)   | 
|Notification Daemon | `dunst` | [dunst](https://dunst-project.org/) | [dunst](https://github.com/davidarrieta/dotfiles/blob/master/dunst/.config/dunst/dunstrc) | 
|PDF Viewer   |`zathura`   |[Zathura](https://github.com/pwmt/zathura)   |[Zathura](https://github.com/davidarrieta/dotfiles/blob/master/zathura/.config/zathura/zathurarc)   |   |   |   |
|Text Editor   |`vim` - `leafpad`   |[Vim](https://github.com/vim/vim) - [Leafpad](http://tarot.freeshell.org/leafpad/)  |[Vim](https://github.com/davidarrieta/dotfiles/blob/master/vim/.vimrc)   |   |   |   
|Terminal Emulator   | `urxvt`   |[urxvt](http://software.schmorp.de/pkg/rxvt-unicode.html)   | [urxvt](https://github.com/davidarrieta/dotfiles/blob/master/Xresources/Xresources.d/urxvt) |
|Window Manager | `i3-gaps` | [i3-gaps](https://github.com/Airblader/i3) | [i3-gaps](https://github.com/davidarrieta/dotfiles/blob/master/i3/.config/i3/config)
|AUR Helper| `aurutils` | [aurutils](https://github.com/AladW/aurutils) |
|Screenshooter| `scrot` | [Scrot](https://github.com/dreamer/scrot) |
|Display Manager| `lightdm` | [LightDM](https://freedesktop.org/wiki/Software/LightDM) | 
|Browser    |`firefox`   |[Firefox](https://www.mozilla.org/en-US/firefox/new/)   | 
|File Manager   |`ranger` and `pcmanfm`   |[Ranger](https://github.com/ranger/ranger) - [PCManFM](https://wiki.lxde.org/en/PCManFM)  |   |   |   |   |
|Terminal Font   |`hack`   |[Hack](https://github.com/source-foundry/Hack)   |   |   |   |   |
|Video Player   |`mpv`   |[Mpv](https://github.com/mpv-player/mpv)   |   |   |   |   |
|Image Viewer | `feh` - `viewnior` | [Feh](https://github.com/derf/feh) - [Viewnior](https://github.com/hellosiyan/Viewnior) |
|Password manager | `pass` | [pass: The Standard Unix Password Manager](https://www.passwordstore.org/) |

### Other things i use and recommend

* For desktop blurrying: Ganifladi's excellent `blurme` → [Blurme](https://github.com/ganifladi/blurme)
* To have icons in `polybar`: `ttf-font-awesome-4` → [Font Awesome 4](https://aur.archlinux.org/packages/ttf-font-awesome-4/) **Font Awesome 5 does not work properly with Polybar. Or at least it doesn't work like Font Awesome 4.** 
* To vote for all your packages downloaded from the AUR: `aurvote` → [AURvote](https://github.com/archlinuxfr/aurvote) 
Use it this way: ```$ aurvote -v $(pacman -Qqm) ``` - **Only for Arch Linux users.**
* To retrieve and filter the latest Pacman mirror list and the best servers available: `reflector` → [Reflector](https://xyne.archlinux.ca/projects/reflector/) - **Only for Arch Linux users.**

<br>

## Installation

### Before installing, be sure to read useful cowboy [gently-worded note](https://github.com/cowboy/dotfiles#heed-this-critically-important-warning-before-you-install) and this excellent article by Anish Athalye: [Dotfiles are NOT meant to be forked](http://www.anishathalye.com/2014/08/03/managing-your-dotfiles/). That said, let's go with the installation:

0. **If you want to make your own dotfiles stow-compatible:** You must learn how to arrange your files right so that `stow` can link them correctly, here are some helpful links:
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

<br>

## Current workflow since January 6, 2018.

#### Clean
![Clean](https://github.com/davidarrieta/dotfiles/blob/master/screenshots/img_8.png)

#### [TTY-Clock](https://github.com/xorg62/tty-clock)
![TTY-Clock](https://github.com/davidarrieta/dotfiles/blob/master/screenshots/img_9.png)

#### [r/unixporn](https://reddit.com/r/unixporn)
![r/unixporn](https://github.com/davidarrieta/dotfiles/blob/master/screenshots/img_1.png)

#### [Color scripts](https://github.com/stark/Color-Scripts)
![Color scripts](https://github.com/davidarrieta/dotfiles/blob/master/screenshots/img_2.png)

#### [cava](https://github.com/karlstav/cava) and [colorblocks](https://github.com/davidarrieta/dotfiles/blob/master/scripts/.scripts/colorblocks)
![Cava and colorblocks](https://github.com/davidarrieta/dotfiles/blob/master/screenshots/img_3.png)

#### [neofetch](https://github.com/dylanaraps/neofetch), [ranger](https://ranger.github.io/) and [ncmpcpp](https://github.com/arybczak/ncmpcpp)
![neofetch, ranger and ncmpcpp](https://github.com/davidarrieta/dotfiles/blob/master/screenshots/img_4.png)

#### [PCManFM](https://wiki.archlinux.org/index.php/PCManFM) and [cava](https://github.com/karlstav/cava)
![PCManFM and cava](https://github.com/davidarrieta/dotfiles/blob/master/screenshots/img_5.png)

#### [PCManFM](https://wiki.archlinux.org/index.php/PCManFM) and [cava](https://github.com/karlstav/cava)
![PCManFM and cava](https://github.com/davidarrieta/dotfiles/blob/master/screenshots/img_6.png)

#### [cava](https://github.com/karlstav/cava), [neofetch](https://github.com/dylanaraps/neofetch) and [ranger](https://ranger.github.io/)
![cava, neofetch and ranger](https://github.com/davidarrieta/dotfiles/blob/master/screenshots/img_7)

#### [A bit of my i3 configuration](https://github.com/davidarrieta/dotfiles/blob/master/i3/.config/i3/config), [neofetch](https://github.com/dylanaraps/neofetch) and [mpv](https://mpv.io/) playing [this song](https://www.youtube.com/watch?v=R1v8wpScKNI) 
![i3 config, neofetch and mpv](https://github.com/davidarrieta/dotfiles/blob/master/screenshots/img_10)

<br>

## Ok, your dotfiles are nice but i want to learn from other people; Where can i get other dotfiles?

Here you will find A LOT of other people's dotfiles: 
* [Dotfiles.github.io](http://dotfiles.github.io/) 
* [Arch Linux wiki page for dotfiles](https://wiki.archlinux.org/index.php/Dotfiles)

<br>

## Thanks to:

This repository is strongly inspired by the work of some people, and would not have existed if it were not for:

* [Xero](https://github.com/xero) 
* [Mohabaks](https://mohabaks.github.io/)
* [Samuel Walladge](https://swalladge.id.au/)
* All the *ricers* who inspired me from [unixporn](https://www.reddit.com/r/unixporn/).
* And all the people i might have stolen scripts or configs :grin:

<br>

## LICENSE

```
Copyright (C) 2018 - Claudio D. Arrieta <ArrietaDavid2001@protonmail.com>

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program.  If not, see <http://www.gnu.org/licenses/>.
```

This repository contains both original and third party content. Content can be assumed to be original unless stated otherwise. Original content is copyright © 2018 Claudio D. Arrieta , and can be used and distributed under the terms of the GPLv3. All third party content is copyright their respective authors and bound by their original licenses.

All attempts have been made to identify third party content within the repository, with sources and attribution given where necessary. Please contact me if any issues are discovered.
