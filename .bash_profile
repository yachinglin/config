DIR=Dx
SYM_LINK=Gx
SOCKET=Fx
PIPE=dx
EXE=Cx
BLOCK_SP=Dx
CHAR_SP=Dx
EXE_SUID=hb
EXE_GUID=ad
DIR_STICKY=Ex
DIR_WO_STICKY=Ex
export CLICOLOR=true
export LSCOLORS="$DIR$SYM_LINK$SOCKET$PIPE$EXE$BLOCK_SP$CHAR_SP$EXE_SUID$EXE_GUID$DIR_STICKY$DIR_WO_STICKY"
export PATH="$HOME/bin:$PATH"
alias grep="grep --color=auto"

function git_branch {
    ref=$(git symbolic-ref HEAD 2> /dev/null) || return;
    echo "("${ref#refs/heads/}")";
}
PS1="[\D{%F} \t]\e[0;35m\h\e[m: \e[0;32m\w\e[m\e[0;36m\$(git_branch)\e[m $ "
