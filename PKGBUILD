# Maintainer: Claudio D. Arrieta <ArrietaDavid2001@protonmail.com>
#
# BEFORE RUNNING, READ THIS!
# 
# This is not a PKGBUILD that you should run as it is without any precaution, 
# you're encouraged to edit it, modify it, and delete it as desired. 
# If you don't know how to properly modify this PKGBUILD, you should
# take a quick look at these wiki pages:
# 
# https://wiki.archlinux.org/index.php/PKGBUILD
# https://wiki.archlinux.org/index.php/Creating_packages
#
# Have a lot of fun!

pkgbase=arrietadavid-dotfiles
pkgname=(arrietadavid-dotfiles-base arrietadavid-dotfiles-desktop)
pkgver=0.1
pkgrel=1
pkgdesc="Claudio D. Arrieta's dotfiles. See my Github for more info" 
arch=(any)
url='https://github.com/DavidArrieta/dotfiles'
license=('GPL3')

package_arrietadavid-dotfiles-base() {
  pkgname=arrietadavid-dotfiles-base
  pkgdesc="The most basic dependencies for my dotfiles"
  depends=(
    'coreutils' 
    'grep' 
    'vim' 
    'neovim'
    'zsh' 
    'bash' 
    'bash-completion' 
    'bc' 
    'gksu' 
    'grub' 
    'openssh'
    'networkmanager'
    'pulseaudio' 
    'systemd' 
    'udisks2' 
    'git'
    'htop'
    'gnupg'
    'ntfs-3g'
    'os-prober'
    'gvfs'
    'reflector'
    'pkgstats'
    'numlockx'
    'wget'
    'dosfstools'
    'linux-firmware'
    'unrar'
    'unzip'
    'curl'
    'dfc'
  )
}

package_arrietadavid-dotfiles-desktop() {
  pkgname=arrietadavid-dotfiles-desktop
  pkgdesc="Desktop dependencies for my dotfiles"
  depends=(
    'xorg-server-common'
    'xorg-apps'
    'xorg-server'
    'xorg-xinit'
    'xdg-user-dirs'
    'feh'
    'i3-gaps '
    'stow'
    'dunst'
    'gtk2'
    'lxsession' 
    'gtk3'
    'freetype2'
    'lxappearance'
    'ranger'
    'scrot'
    'rofi'
    'compton'
    'ttf-dejavu'
    'ttf-hack'
    'mpc'
    'mpd'
    'mpv'
    'ncmpcpp'
    'zathura'
    'zathura-pdf-mupdf'
    'lightdm'
    'lightdm-gtk-greeter'
    'lightdm-gtk-greeter-settings'
    'firefox'
    'firefox-i18n-es-es'
    'l3afpad'
    'parcellite'
    'viewnior'
    'wmctrl: Needed for blurme'
    'imagemagick: Needed for blurme'
    'gnome-calculator'
    'w3m: Needed for ranger to display images'
    'dropbox'
    'dropbox-cli'
    'youtube-dl'
    'weechat'
    'pass'
    'dmenu'
    'mesa'
    'pavucontrol'
    'pass-update'
    'pcmanfm-gtk3'
  )
}
