export ZSH=/home/amet/.oh-my-zsh
export TERM="xterm-256color"

ZSH_THEME="powerlevel9k/powerlevel9k"
export PATH="/usr/local/sbin:/usr/local/bin:/usr/bin:/opt/android-sdk/platform-tools:/usr/lib/jvm/default/bin:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl:/home/amet/.gem/ruby/2.3.0/bin"

# Uncomment to delete context segment when it has a value of amet@Winterfell
#DEFAULT_USER=$USER

POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_COLOR_SCHEME='light'
POWERLEVEL9K_DISABLE_RPROMPT=true

POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(ram context dir vcs)

# These two settings ensure that I always just see the current
# directory in which I'm working, without awkwards references
# to its parent directories.
POWERLEVEL9K_SHORTEN_DIR_LENGTH=1
POWERLEVEL9K_SHORTEN_DELIMITER=''

#All black prompt (besides vcs stuff)

POWERLEVEL9K_RAM_BACKGROUND="black"
POWERLEVEL9K_RAM_FOREGROUND="white"

POWERLEVEL9K_CONTEXT_DEFAULT_BACKGROUND="black"
POWERLEVEL9K_CONTEXT_DEFAULT_FOREGROUND="white"

POWERLEVEL9K_DIR_HOME_BACKGROUND="black"
POWERLEVEL9K_DIR_HOME_FOREGROUND="white"
POWERLEVEL9K_DIR_HOME_SUBFOLDER_BACKGROUND="black"
POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND="white"
POWERLEVEL9K_DIR_DEFAULT_BACKGROUND="black"
POWERLEVEL9K_DIR_DEFAULT_FOREGROUND="white"

#General Aliases:
alias emacs='emacs -nw'
alias e='emacs -nw'
alias v='vim'
alias mux='tmuxinator'
alias dotfiles='sh ~/OpenSource/dotfiles/install'

#Dotfiles edition aliases:
alias eei='v ~/OpenSource/dotfiles/emacs-init.org'
alias ez='v ~/OpenSource/dotfiles/zshrc'
alias et='v ~/OpenSource/dotfiles/tmux.conf'

#Git Aliases:

alias g='git'
alias gs='git status'
alias gd='git diff'
alias gl='git log --oneline --graph --decorate'

alias ga='git add -A'
alias gc='git commit'
alias gca='git commit --amend'
alias gcam='git commit --am'
alias gcl='git clone'
alias gcp='git checkout -'
alias gnb='git checkout -b'
alias gp='git pull origin'
alias gpm='git pull origin master'
alias gpd='git pull origin dev'
alias gpum='git push origin master'
alias gpud='git push origin dev'
alias gpu='git push origin'
alias grh='git reset --hard HEAD'
alias grs='git reset --soft HEAD'
alias gmnff='git merge --no-ff'
alias gm='git merge'
alias gss='git stash save'
alias gsp='git stash pop'
alias gsl='git stash list'
#Dev aliases:

alias bi='bower install'
alias bu='bower update'
alias grt='grunt'
alias grtd='grunt dev'
alias nd='nodemon'

source $ZSH/oh-my-zsh.sh
