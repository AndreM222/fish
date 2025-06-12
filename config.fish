set -gx PATH bin $PATH
set -gx PATH ~/bin $PATH
set -gx PATH ~/.local/bin $PATH

# NodeJS
set -gx PATH node_modules/.bin $PATH

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
if test -f /opt/homebrew/Caskroom/miniconda/base/bin/conda
    eval /opt/homebrew/Caskroom/miniconda/base/bin/conda "shell.fish" "hook" $argv | source
else
    if test -f "/opt/homebrew/Caskroom/miniconda/base/etc/fish/conf.d/conda.fish"
        source "/opt/homebrew/Caskroom/miniconda/base/etc/fish/conf.d/conda.fish"
    else
        set -x PATH "/opt/homebrew/Caskroom/miniconda/base/bin" $PATH
    end
end
# <<< conda initialize <<<

# # TMux
if status is-interactive and not set -q TMUX and type -q tmux
    # Get list of unattached sessions
    set sessions (tmux list-sessions -F '#{session_name} #{session_attached}' 2>/dev/null | grep ' 0$' | cut -d' ' -f1)

    if test (count $sessions) -gt 0
        # Attach to the first unattached session
        exec tmux attach-session -t $sessions[1]\; choose-tree -s
    else
        # No unattached session: create a new one
        exec tmux new-session
    end
end

# Oh-My-Posh

set theme "term_minimalNight"
# minimalNight -> This one is predefined colors
# term_minimalNight -> This one changes based only on the terminal color
# alert_minimalNight -> This one changes only alerts based only on the terminal color
# accent_minimalNight -> This one changes based on the color of the terminal and the accent of pc (Windows and MacOS Only)

set omp_file "~/.config/MinimalNight/$theme.omp.json"
oh-my-posh init fish --config $omp_file | source

# FZF
export FZF_DEFAULT_OPTS="--color=fg:white,hl:blue,gutter:-1 --color=fg+:white,bg+:bright-black,hl+:blue --color=info:yellow,prompt:cyan,pointer:magenta --color=marker:magenta,spinner:yellow,header:bright-black"
fzf --fish | FZF_ALT_C_COMMAND= source

function ghq-fzf -d 'fzf ghq jumper'
    set selected (ghq list | fzf --height 40% --reverse)

    if test -n "$selected"
        cd "$(ghq root)/$selected"

        if test $fish_bind_mode != paste
            set _omp_new_prompt true
        end
    end

    commandline --function repaint
end

function config-fzf -d 'fzf config jumper'
    set selected (ls $HOME/.config | fzf --height 40% --reverse)

    if test -n "$selected"
        cd "$(ghq root)/$selected"

        if test $fish_bind_mode != paste
            set _omp_new_prompt true
        end
    end

    commandline --function repaint
end

bind \cG ghq-fzf
bind \cS config-fzf

export LANG=ja_JP.UTF-8
export LC_ALL=ja_JP.UTF-8

bind \cF fzf-file-widget
bind \cT transpose-chars

# prevent iterm2 from closing when typing Ctrl-D (EOF)
bind \cd delete-char

# Bat
export BAT_THEME="base16"

# Other
set fish_greeting ""

set -gx TERM xterm-256color

set -g theme_color_scheme terminal-dark
set -g fish_prompt_pwd_dir_length 1
set -g theme_display_user yes
set -g theme_hide_hostname no
set -g theme_hostname always

# aliases
alias ls "eza -l --git --icons --header --group-directories-first -g --time-style=long-iso"
alias la "ls --all"

alias g git

alias cls clear
alias rmf "rm -rf"

alias drives "diskutil list"
alias ds drives

command -qv nvim && alias vim nvim
command -qv nvim && alias vi nvim

set -gx EDITOR nvim

# Disable prompt for conda to use oh-my-posh
function __conda_add_prompt; end
