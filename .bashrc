# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# set vim as default editor
export VISUAL=vim
export EDITOR="$VISUAL"

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# colored GCC warnings and errors
export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

# Alias definitions.
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# This loads nvm
# This loads nvm bash_completion
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

# This will print today's date to the command line
today()
{
   echo Today is `date +"%A %d in %B of %Y (%r)"`
}

# Function to make a directory and cd into directory immediately
mkcd()
{
   mkdir -p -- "$1" && cd -P -- "$1"
}

# Used to interact with exercism
exercism () {
    local out
    readarray -t out < <(command exercism "$@")
    printf '%s\n' "${out[@]}"
    if [[ $1 == "download" && -d "${out[-1]}" ]]; then
        cd "${out[-1]}" || return 1
    fi
}

export PATH=/home/potent/vim/bin:$PATH
