# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="theunraveler"
#ZSH_THEME="robbyrussell"


#Hack to stop Zshell from renaming tmux
DISABLE_AUTO_TITLE=true

# Keep 1000 lines of history within the shell and save it to ~/.zsh_history:
HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.zsh_history

# Use modern completion system
autoload -Uz compinit
compinit

zstyle ':completion:*' auto-description 'specify: %d'
zstyle ':completion:*' completer _expand _complete _correct _approximate
zstyle ':completion:*' format 'Completing %d'
zstyle ':completion:*' group-name ''
zstyle ':completion:*' menu select=2
#eval "$(dircolors -b)"
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle ':completion:*' matcher-list '' 'm:{a-z}={A-Z}' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=* l:|=*'
zstyle ':completion:*' menu select=long
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle ':completion:*' use-compctl false
zstyle ':completion:*' verbose true

zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#)*=0=01;31'
zstyle ':completion:*:kill:*' command 'ps -u $USER -o pid,%cpu,tty,cputime,cmd'
 # -------------------------------------------------------------
 # => Aliases
 # -------------------------------------------------------------
 # Command Aliases
alias apt='sudo aptitude install'

#alias tmax='~/bin/tmax'

alias yummy='sudo yum install'

alias vim='mvim -v'
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

alias git='hub'
alias gpom='git push origin master'
alias gs='git status'
alias gpum='git pull origin master'
alias gphm='git push heroku master'
alias hreload='heroku pg:reset DATABASE && heroku run rake db:migrate'
alias hr='heroku run'

#KILL ALL SWP FILES

alias swpk='rm .*.*.swp'

alias gemgone='gem list | cut -d" " -f1 | xargs gem uninstall -aIx'

alias reload='rake db:drop && rake db:migrate && rake db:seed'
alias ruhrack='rackup -p9292'
alias reload='rake db:drop && rake db:migrate && rake db:seed'
#alias ctags="`brew --prefix`/bin/ctags"

alias tks="tmux kill-server"
alias tas="tmux attach-session -t"
alias ..='cd ..'
alias ...='cd ../..'
alias internet='lsof -inP | cut -f 1 -d " " | uniq'
alias restart='sudo shutdown -r NOW'
alias rotl='heroku run ruby add_tweet.rb'


# Expansions
alias ls='ls -AFGp'
alias tree='tree -aCFl --charset=UTF8 --du --si'

plugins=(rails3)

source $ZSH/oh-my-zsh.sh

export PATH=$PATH:$HOME/local/bin:$HOME/.rvm/bin:$HOME/bin
export PATH=/usr/local/bin:$PATH
