# Oh-My-Posh
set theme "alert_minimalNight"
# minimalNight -> This one is predefined colors
# term_minimalNight -> This one changes based only on the terminal color
# alert_minimalNight -> This one changes only alerts based only on the terminal color
# accent_minimalNight -> This one changes based on the color of the terminal and the accent of pc (Windows and MacOS Only)

set omp_file "~/.config/MinimalNight/$theme.omp.json"
oh-my-posh init fish --config $omp_file | source

# FZF
export FZF_DEFAULT_OPTS="--color=fg:white,hl:blue,gutter:-1 --color=fg+:white,bg+:bright-black,hl+:blue --color=info:yellow,prompt:cyan,pointer:magenta --color=marker:magenta,spinner:yellow,header:bright-black"
fzf --fish | FZF_ALT_C_COMMAND= source

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

set -gx PATH bin $PATH
set -gx PATH ~/bin $PATH
set -gx PATH ~/.local/bin $PATH

# NodeJS
set -gx PATH node_modules/.bin $PATH
