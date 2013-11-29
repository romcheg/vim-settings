"            DO WHAT THE FUCK YOU WANT TO PUBLIC LICENSE
"                    Version 2, December 2004
" 
" Everyone is permitted to copy and distribute verbatim or modified
" copies of this license document, and changing it is allowed as long
" as the name is changed.
"
" Disclaimer of Warranty. Unless required by applicable law or
" agreed to in writing, Licensor provides the Work (and each
" Contributor provides its Contributions) on an AS IS BASIS,
" WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or
" implied, including, without limitation, any warranties or conditions
" of TITLE, NON-INFRINGEMENT, MERCHANTABILITY, or FITNESS FOR A
" PARTICULAR PURPOSE. You are solely responsible for determining the
" appropriateness of using or redistributing the Work and assume any
" risks associated with Your exercise of permissions under this License.
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
Bundle 'bling/vim-airline'
Bundle 'jimenezrick/vimerl'
Bundle 'kien/ctrlp.vim'
Bundle 'klen/python-mode'
Bundle 'scrooloose/nerdtree'
Bundle 'tpope/vim-fugitive'

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

" Enable virtualenv support
let g:pymode_virtualenv = 1

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
set guifont=Ubuntu\ Mono\ 13
set guioptions-=L  "remove left-hand scroll bar even from NERDTree
set guioptions-=r  "remove right-hand scroll bar
set nocompatible
set number
set shiftwidth=4
set showmatch
set smarttab
set softtabstop=4
set tabstop=4
syn on
