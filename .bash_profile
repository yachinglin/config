export CLICOLOR=true
export LS_COLORS="di=1;33:ln=1;36:so=1;35:pi=33:ex=1;32:bd=1;33:cd=1;33:su=37;41:sg=30;43:tw=1;34:ow=1;34"
export PATH="$HOME/bin:$PATH"
export LANG=zh_TW.UTF-8
export LC_ALL=zh_TW.UTF-8
alias grep="grep --color=auto"
alias ls="ls --color"

function git_branch {
    git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}
export PS1="[\D{%F} \t]\[\e[0;35m\]\h\[\e[0m\]: \[\e[0;32m\]\w\[\e[0m\]\[\e[0;36m\]\$(git_branch)\[\e[0m\] \\$ "
