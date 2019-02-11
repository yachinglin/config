set nu
syntax on

set background=dark
set backspace=indent,eol,start
set encoding=utf8
set fileencoding=utf8
set fileencodings=utf8,gb2312,ucs-bom,big5
set ts=4 sw=4 et
set incsearch
set hlsearch
set cindent
set expandtab
set nocompatible

highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()
