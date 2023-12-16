# Configs 🐧 ️️️️
This is my personal github repository that contains all the configuration files for different applications that I use on my linux system.

**I use arch btw!**

## Application lists 💻 
Below are the list of all the list of the application that I use and are required for the basic functioning of the system.
```
xorg-server xorg-xinit xorg-xbacklight xorg-xsetroot xclip firefox ttf-jetbrains-mono-nerd networkmanager pacman-contrib wireless_tools xdg-user-dirs tldr bat pcmanfm gzsh zsh-syntax-highlightin gvfs gvfs-mtp polybar bspwm sxhkd xwallpaper xcompmgr exa rofi alacritty neovim xsel dunst libnotify ttf-nerd-fonts-symbols sxiv zathura zathura-pdf-mupdf pulseaudio pamixer lxappearance noto-fonts-emoji noto-fonts-cjk scrot
```

> Use sudo to install packages; `sudo pacman -S *<package name>*`

#### AUR Packages 🙂 ️️
Beside the packages in Official Arch Repository, there are also some packages from [Arch User Repository (AUR)](https://aur.archlinux.org).

```sh
paru -S onlyoffice-bin ttf-ms-fonts microsoft-edge-stable-bin
```

> You need to have `paru` installed to use AUR, or you can use any other [AUR Helper](https://wiki.archlinux.org/title/AUR_helpers).

## Additional Setups 🏭 
There are several additional setups necessary for the system to look good and be more functional.

##### GTK Theme 💅
I use Orchis Gtk White Theme which you can find in [gnomelook.org](https://www.gnome-look.org/p/1357889/) website.

Orchis GTK Theme`https://www.gnome-look.org/p/1357889/`
Variant: `Light-compact`

---
##### Icon Theme 🔵
I use `papirus-icon-theme` which is installed while running *setup.sh*.

---
##### Pacman optimizations 📦 
1. Open pacman config file `nvim /etc/pacman.conf`.

*(You might need to use `sudo` for it.)*

2. Add `ILoveCandy`
3. Uncomment `ParallelDownloads = 5`

---
##### Password feedback 🔐
This will show `******` instead of blank `       ` when we enter the password in terminal.

1. Open sudoers file `EDITOR=nvim visudo`
1. Then add `Defaults pwfeedback`

##### Git configuration ️🔧
git config --global user.email *(your useremail)*

git config --global user.name *(your username)*
