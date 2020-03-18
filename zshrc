# Overview:
#
# I use ZSH instead of bash, along with oh-my-zsh, powerlevel9k theme
# and asdf as my programming languages version manager. (like nvm,
# but for everthing)

# Tmux gets 256 colors to display, so vim displays colorschemes properly.
export TERM=xterm-256color
# I use oh-my-zsh, this loads it. Highly recommend exploring it if you
# don't know it
export ZSH="/home/amet/.oh-my-zsh" #
# Enables NeoVim to display true colors (basically enhances colorschemes)
export NVIM_TUI_ENABLE_TRUE_COLOR=1
# Exports bash path.
# export PATH=$HOME/bin:/usr/local/bin:$PATH -> should move to .zshenv
# Exports language and encoding. I like to be explicit with this.
export LANG=en_US.UTF-8
export "PATH=$HOME/.local/bin:$PATH"
# export powerlevel9k theme. I installed via AUR and symlinked to this:
source /usr/share/zsh-theme-powerlevel9k/powerlevel9k.zsh-theme

# I use powerlevel9k theme for my prompt
ZSH_THEME="powerlevel9k/powerlevel9k"

# Show something like:
# amet@winterfell > /dotfiles > master > ok
# where okay is the status of the last shell exit code.
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(context dir vcs status)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=()
POWERLEVEL9K_PROMPT_ON_NEWLINE=true

# These two settings ensure that I always just see the current
# directory in which I'm working.
# ~/OpenSource/Dotfiles/ = /Dotfiles
POWERLEVEL9K_SHORTEN_DIR_LENGTH=1
POWERLEVEL9K_SHORTEN_DELIMITER=''

# Custom colors for my powerlevel9k segments.
POWERLEVEL9K_DATE_BACKGROUND="black"
POWERLEVEL9K_DATE_FOREGROUND="white"

POWERLEVEL9K_STATUS_ERROR_BACKGROUND="darkred"
POWERLEVEL9K_STATUS_ERROR_FOREGROUND="grey93"

POWERLEVEL9K_CONTEXT_DEFAULT_BACKGROUND="blue"
POWERLEVEL9K_CONTEXT_DEFAULT_FOREGROUND="grey93"

POWERLEVEL9K_VCS_CLEAN_BACKGROUND="green"
POWERLEVEL9K_VCS_CLEAN_FOREGROUND="grey23"
POWERLEVEL9K_VCS_UNTRACKED_BACKGROUND="green"
POWERLEVEL9K_VCS_UNTRACKED_FOREGROUND="grey23"
POWERLEVEL9K_VCS_MODIFIED_FOREGROUND="grey23"

POWERLEVEL9K_DIR_HOME_BACKGROUND="blue"
POWERLEVEL9K_DIR_HOME_FOREGROUND="grey93"

POWERLEVEL9K_DIR_HOME_SUBFOLDER_BACKGROUND="blue"
POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND="grey85"

POWERLEVEL9K_DIR_DEFAULT_BACKGROUND="blue"
POWERLEVEL9K_DIR_DEFAULT_FOREGROUND="grey93"

# asdf: its a version manager for any programming language you can
# imagine.
# git provides git auto completions and shorthands
# git-extras provides even more shorthands
# arch linux provides shorthands for interacting with Arch, mostly
# pacman stuff.
# Vi mode allows me yo use vim features on the shell!
# web search lets me google things from the shell
# z learns my cd habits, so i can z dotfiles when I want to
# cd ~/OpenSource/Dotfiles, for example.
plugins=(asdf git git-extras archlinux vi-mode web-search z)

#sources oh-my-zsh
source $ZSH/oh-my-zsh.sh


# Sets neovim as local and remote text editor
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='nvim'
else
  export EDITOR='nvim'
fi

# Global aliases:
alias vim='nvim'
# emacs/spacemacs runs windowed by default. -nw runs it in terminal (no window)
alias emacs='TERM=xterm-24bit emacs -nw'
alias e='TERM=xterm-24bit emacs -nw'
# always be lazy
alias start-postgres='sudo systemctl start postgresql.service'
alias stop-postgres='sudo systemctl stop postgresql.service'
# reload dotfiles (should refactor)
alias dotfiles='sh ~/DevAlevardi/OpenSource/dotfiles/install'
alias galiases='git config --list | grep alias'
# javascript testing stuff
alias ltf='jest --watchAll'
alias gst='git standup'
alias qapi='QRKY_SERVER=10.22.0.30 DEV=true nodemon'
alias scast='ffmpeg -f x11grab -video_size 1920x1080 -framerate 25 -i $DISPLAY -f alsa -i default -c:v libx264 -preset ultrafast -c:a aac ~/screencast.mp4'
# alias npmgremove='npm ls -gp --depth=0 | awk -F/ '/node_modules/ && !/\/npm$/ {print $NF}' | xargs npm -g rm'

alias rogue="/usr/bin/google-chrome-stable --user-data-dir='/home/amet/no-secure-chrome' --disable-web-security"


# Aliases for WCT:
export LAUNCHPAD_CHROME=/usr/bin/google-chrome-stable

function screencast() {

  ffmpeg -f x11grab -video_size 1920x1080 -framerate 25 -i $DISPLAY -f alsa -i default -c:v libx264 -preset ultrafast -c:a aac $1

}

# forget forever mkdir something && cd something
function mkcd() { mkdir -p $1 && cd $1 }
function cdf() { cd *$1*/ } # stolen from @topfunky

function gbbva() { git config --global user.name "ramonamet.alvirde.contractor"  && git config --global user.email "ramonamet.alvirde.contractor@bbva.com" }
function gmine() { git config --global user.name "Amet Alvirde"  && git config --global user.email "Amet.Alvirde@gmail.com" }

# Sources asdf and its completions
. $HOME/.asdf/asdf.sh
. $HOME/.asdf/completions/asdf.bash

