#This is the wrong way to do things 
alias apt='sudo aptitude install' 
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

# Heavyink Shortcuts
alias rununits='rake test:units > UnitResults.txt'
alias runint='rake test:units > IntResults.txt'
alias runfunc='rake test:functionals > FuncResults.txt'
