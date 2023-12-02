#!/usr/bin/sh

echo """
                   █████                                          █████     
                  ░░███                                          ░░███      
  █████   ██████  ███████   █████ ████ ████████            █████  ░███████  
 ███░░   ███░░███░░░███░   ░░███ ░███ ░░███░░███          ███░░   ░███░░███ 
░░█████ ░███████   ░███     ░███ ░███  ░███ ░███         ░░█████  ░███ ░███ 
 ░░░░███░███░░░    ░███ ███ ░███ ░███  ░███ ░███          ░░░░███ ░███ ░███ 
 ██████ ░░██████   ░░█████  ░░████████ ░███████     ██    ██████  ████ █████
░░░░░░   ░░░░░░     ░░░░░    ░░░░░░░░  ░███░░░     ░░    ░░░░░░  ░░░░ ░░░░░ 
                                       ░███                                 
                                       █████                                
                                      ░░░░░                                 

          (Automated script to deploy my configs with a single command)
	  		      github.com/ipggb/configs
"""

## Install required packages

echo """
                          _   _                                                         
  .  ,__,   ,   -/-__,   //  //  .  ,__,   __      ,_   __,   __   /, __,   __   _   ,  
_/__/ / (__/_)__/_(_/(__(/__(/__/__/ / (__(_/_    _/_)_(_/(__(_,__/(_(_/(__(_/__(/__/_)_
                                          _/_     /                        _/_          
                                         (/      /                        (/            
"""

sudo pacman -S --noconfirm --needed - < pkglist.txt

## Copying config files to its directory

echo """
  __   _,_,_         .  ,__,   __      __   _,_ ,__,   __   .  /)  ,  
_(_,__(_/_/_)__(_/__/__/ / (__(_/_   _(_,__(_/_/ / (__(_/__/__//__/_)_
         /     _/_            _/_                     _/_   _/        
        /     (/             (/                      (/     /)        
"""

GITCONF_DIR="$HOME/configs/"
CONFIG_DIR="$HOME/.config/"
LOCALBIN_DIR="$HOME/.local/bin/"

# create config directory if there's not
mkdir "$CONFIG_DIR"
mkdir -p "$LCLBIN_DIR"

## Copying config files to ~/.config
cp -r "$GITCONF_DIR/alacritty" "$CONFIG_DIR"
cp -r "$GITCONF_DIR/bspwm" "$CONFIG_DIR"
cp -r "$GITCONF_DIR/dunst" "$CONFIG_DIR"
cp -r "$GITCONF_DIR/gtk-2.0" "$CONFIG_DIR"
cp -r "$GITCONF_DIR/gtk-3.0" "$CONFIG_DIR"
cp -r "$GITCONF_DIR/nvim" "$CONFIG_DIR"
cp -r "$GITCONF_DIR/polybar" "$CONFIG_DIR"
cp -r "$GITCONF_DIR/ranger" "$CONFIG_DIR"
cp -r "$GITCONF_DIR/rofi" "$CONFIG_DIR"
cp -r "$GITCONF_DIR/sxhkd" "$CONFIG_DIR"
cp -r "$GITCONF_DIR/X11" "$CONFIG_DIR"
cp -r "$GITCONF_DIR/zathura" "$CONFIG_DIR"
cp -r "$GITCONF_DIR/zsh" "$CONFIG_DIR"
cp -r "$GITCONF_DIR/zshenv" "$HOME/.zshenv"

## Copying config files to ~/.local/bin
cp -r "$GITCONF_DIR/bin/*" "$LCLBIN_DIR"

