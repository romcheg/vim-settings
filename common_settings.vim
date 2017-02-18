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

" System settings
set nocompatible "do not run in Vi-compatible mode
set clipboard=unnamed "use system clipboard
set t_Co=256


" Set common control options
set mouse=

" Set common layout options
colorscheme solarized "set color scheme to Solarized
let g:solarized_termtrans = 1 "be transparent in the terminal mode
let g:airline_powerline_fonts = 1 "use fancy fonts for vim-airline
let NERDTreeIgnore=['\.pyc$', '__pycache__$'] "don't show .pyc in the Tree
set background=dark "set dark background
set cc=79 "show a vertical line on the 79th symbol. Useful for PEP8
set cursorcolumn "hightlight a column under the cursor
set cursorline "hightlight a line under the cursor
set number "switch line number on
syn on "switch syntax highlight on


" Set common editing options
set autoindent "follow the indentation from the previous line
set bs=2 "configure backspace
set expandtab "replace tabs with spaces
set shiftwidth=4 "configure automatic indentation
set showmatch "show matching braces
set smarttab "use TAB for indentation
set softtabstop=4 "allow removing spaces as tabs
set tabstop=4 "specify the width of a tab


" Set options specific to GUI implementations of Vim
set guioptions-=L  "remove left-hand scroll bar even from NERDTree
set guioptions-=T  "remove toolbar
set guioptions-=r  "remove right-hand scroll bar

" Set common options for certain plugins
autocmd FileType nerdtree setlocal nocursorcolumn "don't hightlight selected column in the file tree
autocmd FileType tagbar setlocal nocursorcolumn "don't hightlight selected column in the TagBar
autocmd filetype crontab setlocal nobackup nowritebackup " don't create backups for crontab
let g:bookmark_save_per_working_dir = 1 " bookmarks should be saved per-working directory
let g:bookmark_auto_save = 1 " enable auto-saving bookmarks

highlight SignColumn ctermfg=none
