# Maintainer: Claudio D. Arrieta <ArrietaDavid2001@protonmail.com>

pkgbase=arrietadavid-dotfiles-deps
pkgname=(arrietadavid-dotfiles-deps arrietadavid-dotfiles-deps-desktop)
pkgver=2018.01.14
pkgrel=1
pkgdesc="My dotfiles. See my Github for more information"

arch=(any)
url='https://github.com/DavidArrieta/dotfiles'
license=('GPL3')

package_arrietadavid-dotfiles-deps() {
  pkgname=arrietadavid-dotfiles-deps
  pkgdesc="The most basic dependencies for my dotfiles"
  depends=(coreutils grep vim zsh bash bc gksu grub lxsession networkmanager
           pulseaudio systemd udisks2 git)
  optdepends=(
    'ntfs-3g: NTFS compatibility'
    'os-prober: Utility to detect other OSes on a set of drives'
    'gvfs: Utility to mount disks'
    'reflector: Script to retrieve and filter the latest Pacman mirror list.'
    'pkgstats: Submit a list of installed packages to the Arch Linux project'
    'numlockx: Turns on the numlock key in X11'
    'wget: Network utility to retrieve files from the Web'
    'stow: To manage installation of my dotfiles'
    'vimpager: A vim-based script to use as a PAGER'
    'dosfstools: DOS filesystem utilities'
    'linux-firmware: Firmware files for Linux'
  )
}

package_arrietadavid-dotfiles-deps-desktop() {
  pkgname=arrietadavid-dotfiles-deps-desktop
  pkgdesc="Desktop dependencies for my dotfiles"
  depends=(
    xorg-server-common
    xorg-server
    xorg-xinit
    xdg-user-dirs
    feh
    i3-gaps 
    dunst
    gtk2 gtk3
    freetype2
    lxappearance
    ranger
    scrot
    rofi
    arrietadavid-dotfiles-deps
  )
  optdepends=(  
    'mesa: Open-source OpenGL specification. Needed because of my graphic card.'
    'mesa-libg: Needed because of my graphic card.'
    'lib32-mesa-libgl: Needed because of my graphic card.'
    'xf86-video-nouveau: Open Source driver for nVidia cards.'
    'mesa-vdpau: Needed because of my graphic card.'
    'libva-mesa-driver: Needed because of my graphic card.'
    'ttf-dejavu: I like to use this font with Firefox'
    'ttf-droid: I like to use this font with Firefox'
    'ttf-hack: My favorite font for the terminal'
    'mpc: Minimalist command line interface to MPD'
    'mpd: Flexible, powerful, server-side application for playing music'
    'mpv: A free, open source, and cross-platform media player'
    'ncmpcpp: Console music player'
    'zathura: Lightweight PDF viewer'
    'zathura-pdf-mupdf: Needed by Zathura'
    'lightdm: Display manager'
    'lightdm-gtk-greeter: Greeter for Lightdm' 
    'lightdm-gtk-greeter-settings: Graphical settings for lightdm'
    'firefox: Web browser'
    'firefox-i18n-es-mx: Spanish language pack for Firefox'
    'l3afpad: Simple plain text editor for GTK+ 3'
    'parcellite: Lightweight GTK+ clipboard manager'
    'unrar: The RAR uncompression program'
    'unzip: For extracting and viewing files in .zip archives'
    'viewnior: A simple, fast and elegant image viewer program'
    'wmctrl: Needed for blurme'
    'imagemagick: Needed for blurme'
    'xdo: Utility for performing actions on windows in X'
    'calcurse: A text-based personal organizer'
    'gnome-calculator: Calculator'
    'htop: Interactive process viewer'
    'nemo: File manager (Nautilus fork)'
    'transmission-gtk: Fast, easy, and free BitTorrent client (GTK+ GUI)'
    'w3m: Needed for ranger to display images'
    'youtube-dl: Download videos from YouTube.com and a few more sites'
  )
}
