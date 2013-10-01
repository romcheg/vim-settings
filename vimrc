"            DO WHAT THE FUCK YOU WANT TO PUBLIC LICENSE
"                    Version 2, December 2004
" 
" Copyright (C) 2004 Sam Hocevar <sam@hocevar.net>
" 
" Everyone is permitted to copy and distribute verbatim or modified
" copies of this license document, and changing it is allowed as long
" as the name is changed.
" 
"            DO WHAT THE FUCK YOU WANT TO PUBLIC LICENSE
"   TERMS AND CONDITIONS FOR COPYING, DISTRIBUTION AND MODIFICATION
" 
"  0. You just DO WHAT THE FUCK YOU WANT TO.


filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'
Bundle 'altercation/vim-colors-solarized'
Bundle 'scrooloose/nerdtree'
Bundle 'klen/python-mode'
filetype plugin indent on     " required!

:function! StartUp()
    if 0 == argc()
        NERDTree
    end
endfunction

autocmd VimEnter * call StartUp()
autocmd TabEnter * call StartUp()

" Disable pylint checking every save
let g:pymode_lint_write = 0

" Re-map code completion to Tab key
let g:pymode_rope_autocomplete_map = '<tab>'

" Enable python folding
let g:pymode_folding = 0

" Don't show .pyc in the Tree
let NERDTreeIgnore=['\.pyc$']

" Don't know what that means
imap <buffer><Tab> <M-/>

let g:solarized_termtrans = 1

colorscheme solarized
set autoindent
set background=dark
set bs=2
set cc=79
set clipboard=unnamed
set cursorcolumn
set cursorline
set expandtab
set guifont=Andale\ Mono:h13
set guioptions-=L  "remove right-hand scroll bar
set guioptions-=r  "remove right-hand scroll bar
set nocompatible
set number
set shiftwidth=4
set showmatch
set smarttab
set softtabstop=4
set tabstop=4
syn on
