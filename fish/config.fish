function fish_greeting
end

fish_add_path ~/.cargo/bin/

# aliases
alias ls="lsd"
alias v="nvim"
alias sv="sudo -E nvim"
alias ff="fastfetch -c examples/13"
alias ncli="~/dev/programming-langs/rust/ncli/ncli-linux-x86_64"
alias rust="cd ~/dev/programming-langs/rust/ | ls"

# Auto-start tmux safely (no SSH, no nesting)
if status is-interactive
    if type -q tmux
        if not set -q TMUX
            if not set -q SSH_TTY
                tmux new-session -A -s main
            end
        end
    end
end

set -U tide_character_icon ''
set -U tide_character_vi_icon_default ''
fish_vi_key_bindings
set -U fish_autosuggestion_enabled 1
