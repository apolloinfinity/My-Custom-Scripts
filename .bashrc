# Custom Aliases
alias home='cd ~'
alias ..='cd ..'
alias ...='cd ../..'
alias rm='rm -i'
alias startmongo='mongod --auth --port 27017 --dbpath /path/to/yourdb/'
alias bashreload='source ~/.bash_profile && echo "File .bash_profile reloaded correctly" || echo "Syntax error, could not import the file"'

# Custom Functions

# Creates a directory and then changes into them
mcd () {
    mkdir -p $1
    cd $1
}

parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
export PS1="\u@\h \[\033[32m\]\w\[\033[33m\]\$(parse_git_branch)\[\033[00m\] $ "