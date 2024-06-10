#set -g theme_color_scheme gruvbox
alias config="/usr/bin/env git --git-dir=$HOME/dotfiles/ --work-tree=$HOME"
# alias tmux='TERM=screen-256color tmux'


function t --wraps tmux --description 'alias t=TERM=screen-256color tmux'
  TERM=screen-256color tmux
end

function ii --description 'xdg-open .'
  xdg-open $argv
end

# liquidctl --serial $NZXT_CPU_SERIAL set fan speed 40
# liquidctl --serial $NZXT_GPU_SERIAL set fan speed 40
# liquidctl --serial $NZXT_CPU_SERIAL set pump speed 60
# liquidctl --serial $NZXT_GPU_SERIAL set pump speed 60

set NZXT_CPU_SERIAL 6D950F8D525
set NZXT_GPU_SERIAL 6D71587C525

set -g TERM screen-256color

fish_add_path /usr/local/go/bin
set -x GOPATH $HOME/go 
set -x GOBIN $GOPATH/bin
fish_add_path $GOPATH/bin
fish_add_path $GOBIN

set --universal nvm_default_version latest

