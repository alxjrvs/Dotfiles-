#This is the wrong way to do things 
alias apt='sudo aptitude install' 

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
alias g?='git status'
alias gpum='git pull origin master'

#Todo.txt shell
alias t='./todo.sh'

#KILL ALL SWP FILES

alias swpk='rm .*.*.swp'

alias gemgone='gem list | cut -d" " -f1 | xargs gem uninstall -aIx'

alias reload='rake db:drop && rake db:migrate && rake db:seed'
alias ruhrack='rackup -p9292'
alias reload='rake db:drop && rake db:migrate && rake db:seed'
alias herokupush='git push heroku master'
alias ctags="`brew --prefix`/bin/ctags"
alias tks="tmux kill-server"
alias tas="tmux attach-session -t"
