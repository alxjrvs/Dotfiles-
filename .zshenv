# -------------------------------------------------------------
 # Maintainer: Alex Jarvis
 #            http://alxjrvs.com - alxjrvs@gmail.com
 #
 # Original Creator: Itai Ferber
 #             http://itaiferber.net - hi@itaiferber.net
 #
 # Version: a1.0 - 09/05/2012
 #
 # Sections:
 # -> RVM
 # -> Environment Variables
 # -> Aliases
 # -> File Manipulation
 # -> Process Manipulation
 # -> Terminal Manipulation
 # -> zsh Options
 #
 # Revisions:
 # -> a1.0.0: Alxjrvs Mangling it into his program
 # -> 1.0.0: Initial revision (settings copied over from .zshrc where logical).
 # -------------------------------------------------------------

 # -------------------------------------------------------------
 # => RVM
 # -------------------------------------------------------------
 [[ -s ~/.rvm/scripts/rvm ]] && source ~/.rvm/scripts/rvm

 # -------------------------------------------------------------
 # => Environment Variables
 # -------------------------------------------------------------
 # Path
export PATH=/Users/alxjrvs/.rvm/gems/ruby-1.9.3-p194@global/bin:/Users/alxjrvs/.rvm/gems/ruby-1.9.3-p194@global/bin:/Users/alxjrvs/.rvm/rubies/ruby-1.9.3-p194/bin:/Users/alxjrvs/.rvm/bin:/Users/alxjrvs/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/opt/X11/bin:/Users/alxjrvs/local/bin/:/Users/alxjrvs/bin/:$HOME/bin

 # History
 export HISTFILE=~/.zsh_history
 export HISTSIZE=10000
 export HISTCONTROL=ignoredups
 export SAVEHIST=10000

 # Editor
 export EDITOR=vim

 # Localization
 export LC_TYPE=en_US.UTF-8

 # Frameworks

 # -------------------------------------------------------------
 # => Aliases
 # -------------------------------------------------------------
 # Command Aliases
alias apt='sudo aptitude install'

#alias tmax='~/bin/tmax'

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
 alias ..='cd ..'
 alias ...='cd ../..'
 alias internet='lsof -inP | cut -f 1 -d " " | uniq'
 alias restart='sudo shutdown -r NOW'

 # Expansions
 alias ls='ls -AFGp'
 alias tree='tree -aCFl --charset=UTF8 --du --si'

 # Root Aliases
 [ $UID = 0 ] && \
     alias rm='rm -i' && \
         alias mv='mv -i' && \
             alias cp='cp -i'

             # -------------------------------------------------------------
             # => Terminal Manipulation
             # -------------------------------------------------------------
             # Usage: reset
             # Description: 'resets' the terminal by clearing and returning to default directory
             reset () {
                 cd ~/Desktop && clear
                 }

                 # -------------------------------------------------------------
                 # => Process Manipulation
                 # -------------------------------------------------------------
                 # Usage: pid <procname>
                 # Description: returns the pid of the process with the given name
                 # Notes: if multiple processes with the given name are running, no guarantee is made to which pid is returned
                 pid () {
                     ps Ao pid,comm | grep -im1 $1 | awk '{match($0,/([0-9]+)/); print substr($0,RSTART,RLENGTH);}'
                     }

                     # Usage: fp <pattern>
                     # Description: list processes matching the given partial-match pattern
                     fp () {
                         ps Ao pid,comm | awk '{match($0,/[^\/]+$/); print substr($0,RSTART,RLENGTH)": "$1}' | grep -i $1 | grep -v grep
                         }

                         # Usage: fk <pattern>
                         # Description: list process matching the given partial-match pattern to kill
                         fk () {
                             IFS=$'\n'
                                 PS3='Kill which process? (1 to cancel): '
                                     select OPT in 'Cancel' $(fp $1); do
                                             if [ $OPT != 'Cancel' ]; then
                                                         kill $(echo $OPT | awk '{print $NF}')
                                                                 fi
                                                                         break
                                                                             done
                                                                                 unset IFS
                                                                                     unset PS3
                                                                                     }

                                                                                     # Usage: console <procname>
                                                                                     # Description: get the latest logs for the given process name
                                                                                     console () {
                                                                                         if [[ $# > 0 ]]; then
                                                                                                 query=$(echo "$*" | tr - s ' ' '|')
                                                                                                         tail -f /var/log/system.log | grep -i --color=auto -E "$query"
                                                                                                             else
                                                                                                                     tail -f /var/log/system.log
                                                                                                                         fi
                                                                                                                         }

                                                                                                                         # -------------------------------------------------------------
                                                                                                                         # => File Manipulation
                                                                                                                         # -------------------------------------------------------------
                                                                                                                         # Usage: rm <file>
                                                                                                                         # Description: if called with no arguments, move files to trash instead of deleting outright
                                                                                                                         rm () {
                                                                                                                             local path
                                                                                                                                 for path in "$@"; do
                                                                                                                                         if [[ "$path" = -* ]]; then
                                                                                                                                                     /bin/rm $@
                                                                                                                                                                 break
                                                                                                                                                                         else
                                                                                                                                                                                     local file=${path##*/}
                                                                                                                                                                                                 while [ -e ~/.Trash/"$file" ]; do
                                                                                                                                                                                                                 file="$file "$(date +%H-%M-%S)
                                                                                                                                                                                                                             done
                                                                                                                                                                                                                                         /bin/mv "$path" ~/.Trash/"$file"
                                                                                                                                                                                                                                                 fi
                                                                                                                                                                                                                                                     done
                                                                                                                                                                                                                                                     }

                                                                                                                                                                                                                                                     # Usage: extract <file>
                                                                                                                                                                                                                                                     # Description: extracts archived files / mounts disk images
                                                                                                                                                                                                                                                     extract () {
                                                                                                                                                                                                                                                         if [ -f $1 ]; then
                                                                                                                                                                                                                                                                 case $1 in
                                                                                                                                                                                                                                                                             *.bz2) bunzip2 $1;;
                                                                                                                                                                                                                                                                                         *.dmg) hdiutil mount $1;;
                                                                                                                                                                                                                                                                                                     *.gz) gunzip $1;;
                                                                                                                                                                                                                                                                                                                 *.tar) tar -xvf $1;;
                                                                                                                                                                                                                                                                                                                             *.tar.bz2|*.tbz2) tar -jxvf $1;;
                                                                                                                                                                                                                                                                                                                                         *.tar.gz|*.tgz) tar -zxvf $1;;
                                                                                                                                                                                                                                                                                                                                                     *.zip) unzip $1;;
                                                                                                                                                                                                                                                                                                                                                                 *.Z) uncompress $1;;
                                                                                                                                                                                                                                                                                                                                                                             *) echo "'$1' not recognized.";;
                                                                                                                                                                                                                                                                                                                                                                                     esac
                                                                                                                                                                                                                                                                                                                                                                                         else
                                                                                                                                                                                                                                                                                                                                                                                                 echo "'$1' not found."
                                                                                                                                                                                                                                                                                                                                                                                                     fi
                                                                                                                                                                                                                                                                                                                                                                                                     }

                                                                                                                                                                                                                                                                                                                                                                                        # -------------------------------------------------------------
                                                                                                                                                                                                                                                                                                                                                                                        # => zsh Options
                                                                                                                                                                                                                                                                                                                                                                                        # -------------------------------------------------------------
                                                                                                                                                                                                                                                                                                                                                                                        # Directories
                                                                                                                                                                                                                                                                                                                                                                                        setopt AUTO_CD AUTO_PUSHD CD_ABLE_VARS CHASE_DOTS CHASE_LINKS

                                                                                                                                                                                                                                                                                                                                                                                        # Completion
                                                                                                                                                                                                                                                                                                                                                                                        setopt AUTO_LIST AUTO_MENU AUTO_PARAM_SLASH COMPLETE_IN_WORD LIST_TYPES MENU_COMPLETE REC_EXACT

                                                                                                                                                                                                                                                                                                                                                                                        # History
                                                                                                                                                                                                                                                                                                                                                                                        setopt APPEND_HISTORY EXTENDED_HISTORY

                                                                                                                                                                                                                                                                                                                                                                                        # Input/Output
                                                                                                                                                                                                                                                                                                                                                                                        setopt CORRECT

                                                                                                                                                                                                                                                                                                                                                                                        # Scripts and Functions
                                                                                                                                                                                                                                                                                                                                                                                        setopt MULTIOS

                                                                                                                                                                                                                                                                                                                                                                                        # Key Bindings
                                                                                                                                                                                                                                                                                                                                                                                        bindkey "^[[3~" delete-char
