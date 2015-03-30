# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="agnoster-lm"

# Não mostra o nome da máquina, apenas se ligado por SSH
[[ -n "$SSH_CLIENT" ]] || export DEFAULT_USER="luismartins"


# Setting for the new UTF-8 (Corrige problemas de encoding)
export LC_CTYPE=en_US.UTF-8
export LC_ALL=en_US.UTF-8


# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(gitfast git-extras git-flow git-flow-completion bower osx sublime autojump wp-cli)

source $ZSH/oh-my-zsh.sh


# Customize to your needs...
export MAMP_PHP=/Applications/MAMP/bin/php/php5.6.2/bin
export PATH=$MAMP_PHP:$PATH/opt/local/bin:/opt/local/sbin:/opt/local/bin:/opt/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/local/git/bin:/Users/luismartins/.rvm/bin

alias status="git status -sb"
alias add="git add ."
alias commit="git commit -a -m"
alias checkout="git checkout"
alias sync="git sync"

alias gfs="git flow feature start"
alias gff="git flow feature finish"
alias gfp="git flow feature publish"
alias ghs="git flow hotfix start"
alias ghf="git flow hotfix finish"

alias tower="gittower ."

alias log="git log --all --pretty=format:'%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --date=relative"

alias npmi="npm install --save-dev"

alias server="open http://localhost:8000 && python -m SimpleHTTPServer"

# IP Information
alias ip="dig +short myip.opendns.com @resolver1.opendns.com"
alias localip="ipconfig getifaddr en0"
alias ips="ifconfig -a | perl -nle'/(\d+\.\d+\.\d+\.\d+)/ && print $1'"

# List only directories
alias lsd='ls -l | grep "^d"'

# Miscelaneous
alias please='sudo $(history -p !!)'
alias hosts='sudo sublime /etc/hosts'
alias sshconfig='sublime ~/.ssh/config'
alias week='date +%V'
alias component='nocorrect component'

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
