# AlberKev03's Suprdots

### A simple, ready-to-use dotfiles for my daily usage

## Requisites

- GNU Stow. This software is the main protagonist of my dotfiles. It creates symlinks for every single dotfile that I have. This have two benefits:
    1. It helps organizing my dotfiles into a single folder that I can move to every PC I want.
    2. It also works as a easy way to backup my dotfiles.
- Git.

The software that uses the dotfiles inside this repo are:

- Hyprland
  - Hyprshot
  - Hyprlock
  - Hypridle (Not working rn)
- Waybar
- Neovim
- Rofi
- Kitty
- Fastfetch
- Swaync
- Cava

## Instalation

1. clone this repo using the following link:

```
git clone https://www.github.com/alberkev03/dotfiles
```

2. Inside the folder, activate stow.

```
stow .
```

> ### IMPORTANT
>
> Make sure the original dotfiles -if any- are **REMOVED** before activating. If not, it will promt errors.
