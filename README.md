# .dotfiles
These are my dotfiles and also steps on how to set up the shell

Applications include
- fish shell
- neovim
- tmux

## dotfiles installation (on a new device)

```fish
curl -Lks https://gist.github.com/kimfy/333b07f00f8f78a2a3e6831affe35f0f/raw/ | /bin/bash -x
```

**NOTE**
If there are any errors with GitHub authentication, try installing git-credential-manager-core and configure it.

## Application installation

```fish
sudo apt-get install fish tmux
# Install tpm from https://github.com/tmux-plugins/tpm
```

Installing neovim from source
```fish
# Install vim-plug from https://github.com/junegunn/vim-plug 
# Install any pre-requisites for coq_nvim (python venv, sqlite)
# Run :PlugUpdate (Ignore any errors on neovim's startup)
# Follow the instructions on neovim's GitHub
```

## Fonts

1. Download a Nerd font from https://nerdfonts.com/font-download
2. run `mkdir ~/.fonts`
3. Copy all files from unzipped NF download `cp * ~/.fonts`
4. Reload the font cache with `fc-cache -f -v`
5. Relaunch the gnome-terminal
6. Select the font in the profile

## Themes

1. Install Gogh from https://github.com/Mayccoll/Gogh
2. Make sure the shell is `/bin/bash`
3. Run the interactive installer and install `gruvbox dark` (was #72 in 26/1/22)
4. Close and re-launch the terminal
