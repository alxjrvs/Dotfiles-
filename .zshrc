#-------------------------------------------------------------
#  Maintainer: Alex Jarvis
#              http://alxjrvs.com - Alxjrvs@gmail.com
#  original Creator: Itai Ferber
#              http://itaiferber.net - hi@itaiferber.net
#
#  Version:  a1.0 09/05/2012
#
#  Sections:
#  -> zshenv
#  -> zsh Autocompletion
#  -> Alxjrvs stuf
#  Revisions:
#  -> a1.0.0: ALxjrvs Mangling
#  -> 1.0.0: Initial revision. Style copied from vimrc.
# -------------------------------------------------------------

# -------------------------------------------------------------
# => zshenv
# -------------------------------------------------------------
source ~/.zshenv

       # -------------------------------------------------------------
       # => zsh Autocompletion
       # -------------------------------------------------------------
       # Enable autocompletion.
       autoload -U compinit && compinit -C && autoload -U zstyle+

       # Attempt to complete as much as possible.
       zstyle ':completion:*' completer _complete _list _oldlist _expand _ignored _match _correct
       zstyle ':completion:*::::' completer _expand _complete _ignored _approximate

       # Sort files by name.
       zstyle ':completion:*' file-sort name

       # Allow for case-insensitive completion.
       zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'

       # Color completions.
       zstyle ':completion:*' list-colors ${CLICOLOR}
       zstyle ':completion:*:*:kill:*:processes' command 'ps -axco pid,user,command'
       zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#)*=0=01;31'

       # Set the amount of completions that triggers the menu.
       zstyle ':completion:*' menu select=long

       # Ignore certain patterns.
       zstyle ':completion:*:functions' ignored-patterns '_*'
       zstyle ':completion:*:complete:-command-::commands' ignored-patterns '*\~'
       zstyle ':completion:*:*:(^rm):*:*files' ignored-patterns '*?.(o|c~|old|pro|zwc)'

       # Cache completions.
       zstyle ':completion::complete:*' use-cache 1
       zstyle ':completion::complete:*' cache-path ~/.zcompcache/$HOST

       # Allow errors.
       zstyle -e ':completion:*:approximate:*' max-errors 'reply=( $(( ($#PREFIX+$#SUFFIX)/2 )) numeric )'

       # Insert all expansions for expand completer (eh, don't know what this does).
       zstyle ':completion:*:expand:*' tag-order all-expansions

       # Formatting and messages.
       zstyle ':completion:*' list-prompt '%SAt %p: Hit TAB for more, or the character to insert%s'
       zstyle ':completion:*' verbose yes
       zstyle ':completion:*:descriptions' format '%B%d%b'
       zstyle ':completion:*:messages' format '%d'
       zstyle ':completion:*:warnings' format 'No matches for: %d'
       zstyle ':completion:*:corrections' format '%B%d (errors: %e)%b'
       zstyle ':completion:*' group-name ''

       # Offer indexes before parameters in subscripts.
       zstyle ':completion:*:*:-subscript-:*' tag-order indexes parameters #Path to your oh-my-zsh configuration.

#Oh My Zsh
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

