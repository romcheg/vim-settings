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

" This script configures Vundle and specifies required plugins

function InstallVundle()
    " Installs Vundle into user's .vim directory.
    echo "Installing Vundle.."
    echo ""
    silent !mkdir -p ~/.vim/bundle
    silent !git clone https://github.com/gmarik/vundle ~/.vim/bundle/vundle
endfunction


let vundle_readme=expand('~/.vim/bundle/vundle/README.md')
let initialized = filereadable(vundle_readme)

if !initialized
    echom "Configuring your Vim for the firt run..."
    call InstallVundle()
endif

filetype off                   " required!
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'

Bundle 'MattesGroeger/vim-bookmarks'
Bundle 'Shougo/neocomplete.vim'
Bundle 'altercation/vim-colors-solarized'
Bundle 'bling/vim-airline'
Bundle 'davidhalter/jedi-vim'
Bundle 'dhruvasagar/vim-table-mode'
Bundle 'fatih/vim-go'
Bundle 'jimenezrick/vimerl'
Bundle 'keith/swift.vim'
Bundle 'kien/ctrlp.vim'
Bundle 'landaire/deoplete-swift'
Bundle 'majutsushi/tagbar'
Bundle 'scrooloose/nerdtree'
Bundle 'tpope/vim-fugitive'
Bundle 'vim-syntastic/syntastic'

filetype plugin indent on     " required!

if !initialized
    echom "Installing plugins..."
    BundleInstall!
endif

