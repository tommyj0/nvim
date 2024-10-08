# Neovim Config

## Requirements

### Neovim 

Install [Neovim](https://github.com/neovim/neovim/blob/master/INSTALL.md) >= 0.8

### Terminal

Install one of the following Terminals along with a [Nerd Font](https://www.nerdfonts.com/):

| Terminal | Windows | MacOS | Linux |
|---|---|---|---|
|[Alacritty](https://github.com/alacritty/alacritty)| &check;|&check;|&check;|
|[wezterm](https://github.com/wez/wezterm)| &check;|&check;|&check;|
|[iterm2](https://iterm2.com/)| &cross;|&check;|&cross;|
|[kitty](https://github.com/kovidgoyal/kitty)| &cross;|&check;|&check;|

### Package Managers

Optional Installs for LSP servers:

- [cargo](https://doc.rust-lang.org/cargo/getting-started/installation.html)
- [npm](https://docs.npmjs.com/downloading-and-installing-node-js-and-npm)
- [pip](https://pip.pypa.io/en/stable/installation/)

### Tools

- [ripgrep](https://github.com/BurntSushi/ripgrep)
- C compiler

## Setup

After installing requirements:

- Delete (and backup) the config and data folder for current setup

- Clone into config folder

| Folder | Windows | MacOS | Linux |
|---|---|---|---|
| config | C:\Users\USER\AppData\Local\nvim | ~/.config/nvim | ~/.config/nvim |
| data | C:\Users\USER\AppData\Local\nvim-data | ~/.local/share/nvim | ~/.local/share/nvim |

```shell
git clone https://github.com/tommyj0/nvim.git [CONFIG FOLDER]
```
