# .dotfiles
My dotfiles.

My dotfiles include .gitconfig files for git, it supports multiple users (work, personal.). It changes the way I clone git repositories. To clone a repository with my personal account I need to specify my username. Example:
```bash
git clone https://kimfy@github.com/user/repo.git
```

The .gitconfig files in P/work and P/personal replace https://github.com with https://work or personal account.github.com for all sub git directories.

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

## [fish shell](https://fishshell.com/) 

I use fish shell. 
```bash
sudo apt install fish
```
### [oh-my-fish](https://github.com/oh-my-fish/oh-my-fish#installation)

I use oh-my-fish for my fish plugins. Install it by following the instructions from the URL above.

## [tmux](https://github.com/tmux/tmux)

I use tmux for terminal splitting https://github.com/tmux/tmux/wiki

### [tpm](https://github.com/tmux-plugins/tpm#installation)

I use tpm for my tmux plugins. Install it by following the instructions from the URL above.

## [neovim](https://github.com/neovim/neovim#install-from-source)

I use neovim as my editor/ide.

**Installing neovim from source**

Follow the official instructions from neovim's GitHub page https://github.com/neovim/neovim#install-from-source 

**Setting up neovim plugins that require external binaries**

* Install vim-plug from https://github.com/junegunn/vim-plug 
* Install coq_nvim pre-requisites https://github.com/ms-jpq/coq_nvim#install
* Open neovim and run :PlugUpdate (Ignore any errors on neovim's startup)

