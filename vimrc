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

" Enable pylint checking every save
let g:pymode_lint_write = 1

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

" Be transparent in the terminal mode
let g:solarized_termtrans = 1

" Set up fonts for GUI mode for different operating systems
if has("gui_macvim")
      set guifont=Monaco:h13
  endif

source ~/.vim/common_settings.vim

set clipboard=unnamed
set guifont=Ubuntu\ Mono\ 13
set nocompatible
