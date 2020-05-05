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


# Old Bash Profile
export YAOURT_COLORS="nb=1:pkg=1:ver=1;32:lver=1;45:installed=1;42:grp=1;34:od=1;41;5:votes=1;44:dsc=0:other=1;35"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# added by Anaconda3 installer
export PATH="/home/jr/anaconda3/bin:$PATH"

