if status is-interactive
    # Commands to run in interactive sessions can go here
end

fish_add_path -a "/opt/homebrew/bin"

fish_vi_key_bindings

set -gx PATH $PATH $HOME/.krew/bin
