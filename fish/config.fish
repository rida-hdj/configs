function fish_greeting
end

# aliases
alias ls="lsd"
alias v="nvim"
alias sv="sudo -E nvim"
alias ff="fastfetch -c examples/13"
alias update="~/dev/automation/nixos/update.sh"
# Auto-start tmux safely (no SSH, no nesting)
 if status is-interactive
    if type -q tmux
        if not set -q TMUX
            if not set -q SSH_TTY
                tmux attach -t main 2>/dev/null; or tmux new -s main
            end
        end
    end
 end


set -g theme_color_scheme catppuccin-mocha
set -g theme_powerline_fonts yes
set -g theme_nerd_fonts yes
set -g theme_newline_cursor yes
set -g theme_newline_prompt " "
set -g theme_display_cmd_duration yes
set -g theme_display_date no
set -g theme_display_git_dirty no
set -g theme_display_git_ahead_verbose no
set -g theme_display_git_untracked no
set -g theme_show_exit_status yes
set -g theme_display_git yes
set -g theme_use_abbreviated_branch_name yes
set -g theme_display_vi yes
fish_vi_key_bindings
set -U fish_autosuggestion_enabled 1
