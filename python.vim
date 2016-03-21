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

" This script configures everything for convenient Python development.

" Setting custom hotkeys

" Go to assignment
let g:jedi#goto_assignments_command = "<C-c>g"

" Go to definition
let g:jedi#goto_definitions_command = "<C-c>d"

" Find usages
let g:jedi#usages_command = "<C-c>f"

" Show completion
let g:jedi#completions_command = "<Tab>"

" Rename
let g:jedi#rename_command = "<C-c>r"


" Other Jedi-Vim settings

" Show call signatures in a command line to avoid undo issues
let g:jedi#show_call_signatures = "0"

" Do not open stuff in new tabs. It's annoying
let g:jedi#use_tabs_not_buffers = 0
