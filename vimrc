source $VIMRUNTIME/defaults.vim
filetype plugin indent on
noremap h i
noremap i k
noremap k j
noremap j h
"shortcut to move between windows
map <c-j> <c-w>h<c-w>100<BAR>
map <c-l> <c-w>l<c-w>100<BAR>
map <c-i> <c-w>k
map <c-k> <c-w>j
command BuildLatex execute "!~/scripts/BuildLatex.sh %:p"
set tabstop =2
set shiftwidth =2
set expandtab
set nu
set noautoindent

call plug#begin('~/.vim/plugged')
Plug 'lervag/vimtex'
let g:tex_flavor='latex'
let g:vimtex_view_method='zathura'
let g:vimtex_quickfix_mode=0
set conceallevel=1
let g:tex_conceal='abdmg'
Plug 'sirver/ultisnips'
let g:UltiSnipsSnippetDirectories=[$HOME.'/.vim/myultisnips']
let g:UltiSnipsExpandTrigger = '<tab>'
let g:UltiSnipsJumpForwardTrigger = '<c-k>'
let g:UltiSnipsJumpBackwardTrigger = '<c-i>'
call plug#end()

