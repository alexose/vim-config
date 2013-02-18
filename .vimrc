" Syntax highlighting for Less
au BufNewFile,BufRead *.less set filetype=less

set background=dark

" Use incremental searching
set incsearch

" Set standard setting for PEAR coding standards
set tabstop=4
set shiftwidth=4

" Auto expand tabs to spaces
set expandtab

" Auto indent after a {
set autoindent
set smartindent
filetype indent plugin on

" Linewidth to endless
set textwidth=0

" Do not wrap lines automatically
set nowrap

" Show line numbers by default

" Repair wired terminal/vim settings
set backspace=start,eol

"Map <CTRL>-B to run PHP parser check
map <C-B> :w !php -l<CR>

" Map f12 to close window without savivg
map <F12> :q!<CR>

" The completion dictionary is provided by Rasmus:
" http://lerdorf.com/funclist.txt
set dictionary-=/home/sburke/.phpfunctionslist.txt dictionary+=/home/sburke/.phpfunctionslist.txt
" Use the dictionary completion. Use CTRL+N or CTRL+P while in INSERT mode to call completion.
set complete-=k complete+=k

"set list
"set listchars=tab:>-,trail:-
"set listchars=tab:>-,trail:-,eol:$  "Puts a $ at the end of every line
set ignorecase                  " caseinsensitive searches
set showmode                    " always show command or insert mode
set ruler                      " show line and column information
set showmatch                  " show matching brackets
set formatoptions=tcqor
set whichwrap=b,s,<,>,[,]
syntax on
au BufNewFile,BufRead *.jstpl set filetype=html

map <F7> mzgg=G`z<CR>

set keywordprg=/home/sburke/.phphelp
" and .phphelp looks like: 
"####### 
"#!/usr/bin/bash 
"links http://www.php.net/$1 
"####### 
"Hit SHIFT+k in command mode.
"
nmap <C-N> :tabnew <CR>
nmap <C-T> :tabnext <CR>
nmap <C-P> :tabprevious <CR>
nmap <C-C> :tabclose <CR>

":au BufWinEnter * let w:m1=matchadd('Search', '\%<101v.\%>97v', -1)
":au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>100v.\+', -1)
set pastetoggle=<F11>
map <F9> :%s/['"]/\="'\""[submatch(0)!='"']/g

nmap \fR :Mirror<CR>
command! -bar -range Mirror <line1>,<line2>call setline('.', join(reverse(split(getline('.'), '\zs')), ''))

call pathogen#infect()

set runtimepath^=~/.vim/bundle/ctrlp.vim

let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_follow_symlinks = 1

let g:detectindent_preferred_expandtab = 1
let g:detectindent_preferred_indent = 4

autocmd BufRead * DetectIndent
