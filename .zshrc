# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="theunraveler"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

#Hack to stop Zshell from renaming tmux
DISABLE_AUTO_TITLE=true


#Alxjrvs Aliases
#This is the wrong way to do things
alias apt='sudo aptitude install'


alias tmax='~/bin/tmax'

alias yummy='sudo yum install'

alias up='sudo aptitude update && sudo aptitude safe-upgrade'
alias search='sudo apt-cache search'
alias la='ls -a'
alias ..='cd ..'
alias code='cd ~/Code/'

#get to the dreamhost SSH!

alias dream='ssh alxjrvs@lions.dreamhost.com'

#Go talk to 8t88

alias 88='cd /media/8t88'

#Enable Writing mode

alias lf='cd ~/Writing/lf'
alias sp='cd ~/Writing/spndxls'
alias write='cd ~/Writing/'

#Git Alias
alias gd='git commit -a && git push'
alias gpom='git push origin master'
alias gs='git status'
alias gpum='git pull origin master'


#KILL ALL SWP FILES

alias swpk='rm .*.*.swp'

alias gemgone='gem list | cut -d" " -f1 | xargs gem uninstall -aIx'

alias reload='rake db:drop && rake db:migrate && rake db:seed'
alias ruhrack='rackup -p9292'
alias reload='rake db:drop && rake db:migrate && rake db:seed'
alias herokupush='git push heroku master'
#alias ctags="`brew --prefix`/bin/ctags"

alias tks="tmux kill-server"
alias tas="tmux attach-session -t"
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
plugins=(git github heroku osx rails rails3 ruby rvm)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH=/Users/alxjrvs/.rvm/gems/ruby-1.9.3-p194@global/bin:/Users/alxjrvs/.rvm/gems/ruby-1.9.3-p194@global/bin:/Users/alxjrvs/.rvm/rubies/ruby-1.9.3-p194/bin:/Users/alxjrvs/.rvm/bin:/Users/alxjrvs/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/opt/X11/bin:/Users/alxjrvs/local/bin/:/Users/alxjrvs/bin/
