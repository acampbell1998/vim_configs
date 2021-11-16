source $VIMRUNTIME/defaults.vim
filetype plugin indent on

" Guide to edit highlighting (using for vimtex conceal)
"https://gist.github.com/romainl/379904f91fa40533175dfaec4c833f2f
augroup MyColors
  autocmd!
  autocmd ColorScheme * highlight Conceal ctermbg=white ctermfg=black
augroup END
colorscheme ron
noremap h i
noremap i k
noremap k j
noremap j h
"shortcut to move between windows
map <c-j> <c-w>h<c-w>100<BAR>
map <c-l> <c-w>l<c-w>100<BAR>
map <c-i> <c-w>k
map <c-k> <c-w>j
tmap <c-j> <c-w>h<c-w>100<BAR>
tmap <c-l> <c-w>l<c-w>100<BAR>
tmap <c-i> <c-w>k
tmap <c-k> <c-w>j
"command -bar BuildLatexCall execute "!~/scripts/BuildLatex.sh %:p"
"command BuildLatex w|BuildLatexCall
"remove trailing whitespace on :w command. From vim.fandom.com/wiki/Remove_unwanted_spaces
autocmd BufWritePre * %s/\s\+$//e
set tabstop =2
set shiftwidth =2
set expandtab
set nu
set noautoindent
set encoding=utf-8
set hlsearch
set foldmethod=indent
set foldnestmax=1

"tabline colors
highlight TabLineFill ctermfg=232 ctermbg=LightGreen
highlight TabLine ctermfg=white ctermbg=234
highlight TablineSel ctermfg=yellow ctermbg=33
highlight Title ctermfg=yellow ctermbg=27

"statusline configs
set statusline=%<%f%h%m%r%=%b\ 0x%B\ \ %l,%c%V\ %P
set laststatus=2
"statusline colors: cterm None removes bold and reverse.
highlight StatusLine cterm=None ctermbg=233 ctermfg=10

call plug#begin('~/.vim/plugged')
Plug 'lervag/vimtex'
let g:tex_flavor='latex'
let g:vimtex_view_method='zathura'
let g:vimtex_quickfix_mode=0
set conceallevel=2
let g:tex_conceal='abdmg'
Plug 'sirver/ultisnips'
let g:UltiSnipsSnippetDirectories=[$HOME.'/.vim/myultisnips']
let g:UltiSnipsExpandTrigger = '<tab>'
let g:UltiSnipsJumpForwardTrigger = '<c-l>'
let g:UltiSnipsJumpBackwardTrigger = '<c-j>'
Plug 'plasticboy/vim-markdown', { 'for': 'markdown' }
call plug#end()
