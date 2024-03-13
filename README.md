# dotfiles

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

**fish plugins**

Install these with `omf i <name>`

- fish-spec
- vcs
- z

## [tmux](https://github.com/tmux/tmux)

I use tmux for terminal splitting https://github.com/tmux/tmux/wiki

**tmux plugins**

List of plugins: https://github.com/tmux-plugins/list

Plugins I use:

- 'tmux-plugins/tpm'
- 'tmux-plugins/tmux-yank'
- 'egel/tmux-gruvbox'
- 'tmux-plugins/tmux-resurrect'
- 'tmux-plugins/tmux-continuum'
- 'laktak/extrakto'
  - requires fzf, python3.6, bash
- 'schasse/tmux-jump'
  - requires ruby

### [tpm](https://github.com/tmux-plugins/tpm#installation)

I use tpm for my tmux plugins. Install it by following the instructions from the URL above.
Install any tmux plugin with C-a+I

## [neovim](https://github.com/neovim/neovim#install-from-source)

**Install neovim from source**

Follow the official instructions from neovim's GitHub page https://github.com/neovim/neovim#install-from-source 

