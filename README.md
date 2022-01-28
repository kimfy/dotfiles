# .dotfiles
These are my dotfiles and also steps on how to set up the shell

## dotfiles installation (on a new device)

```fish
curl -Lks https://gist.github.com/kimfy/333b07f00f8f78a2a3e6831affe35f0f/raw/ | /bin/bash -x
```

**NOTE**
If there are any errors with GitHub authentication, try installing git-credential-manager-core and configure it.

# Applications 

## gnome-terminal

### Fonts

1. Download a Nerd font from https://nerdfonts.com/font-downloads
```bash
mkdir ~/.fonts
```
3. Copy all files from unzipped NF download 
```bash
cp * ~/.fonts
```
4. Reload the font cache with 
```bash
fc-cache -f -v
```
5. Relaunch the gnome-terminal
6. Select the font in the profile

### Themes

1. Install Gogh from https://github.com/Mayccoll/Gogh
2. Make sure the shell is `/bin/bash`
3. Run the interactive installer and install `gruvbox dark` (was #72 in 26/1/22)
4. Close and re-launch the terminal
5. You may have to change to the previously downloaded font

## fish shell 

I use fish shell. https://fishshell.com/
```bash
sudo apt-get install fish
```

## tmux

I use tmux for terminal splitting https://github.com/tmux/tmux/wiki
### Install tpm from https://github.com/tmux-plugins/tpm

```bash
sudo apt-get install tmux
```

## neovim

I use neovim as my editor/ide.

**Installing neovim from source**

Follow the official instructions from neovim's GitHub page https://github.com/neovim/neovim#install-from-source 

**Setting up neovim plugins that require external binaries**

* Install vim-plug from https://github.com/junegunn/vim-plug 
* Install coq_nvim pre-requisites https://github.com/ms-jpq/coq_nvim#install
* Open neovim and run :PlugUpdate (Ignore any errors on neovim's startup)

