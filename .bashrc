# Custom Aliases
alias home='cd ~'
alias ..='cd ..'
alias rm='rm -i'
alias startmongo='mongod --auth --port 27017 --dbpath /home/jr/MonDB/'

# Making the shell show what branch the current branch is. 
parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
export PS1="\u@\h \[\033[32m\]\w\[\033[33m\]\$(parse_git_branch)\[\033[00m\] $ "