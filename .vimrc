set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle, required
Bundle 'gmarik/vundle'
Bundle 'kien/ctrlp.vim'
Bundle 'terryma/vim-multiple-cursors'
Bundle 'scrooloose/syntastic'
Bundle 'itchyny/lightline.vim'
Bundle 'junegunn/vim-easy-align'

set background=dark

" Use incremental searching
set incsearch

set tabstop=4
set softtabstop=4
set shiftwidth=4

" Auto expand tabs to spaces
set expandtab

" Auto indent after a {
set autoindent
set smartindent

" Linewidth to endless
set textwidth=0

" Do not wrap lines automatically
set nowrap

" Set leader to space
let mapleader=" "

" Repair wired terminal/vim settings
set backspace=start,eol

set ignorecase                 " caseinsensitive searches
set showmode                   " always show command or insert mode
set ruler                      " show line and column information
set showmatch                  " show matching brackets
set formatoptions=tcqor
set whichwrap=b,s,<,>,[,]
syntax on
au BufNewFile,BufRead *.jstpl set filetype=html

" Space + p to toggle paste
map <leader>p :set paste!<CR>

" Disable ex mode
map Q <nop>

" Disable encryption on :X
cnoreabbrev X x

" Q saves and quits current window
map Q :x<CR>

" Control + 1 closes all open windows without saving
map <C-X> :qa!<CR>

nmap <C-N> :tabnew <CR>
nmap <C-T> :tabnext <CR>
nmap <C-P> :tabprevious <CR>
nmap <C-C> :tabclose <CR>

nnoremap <silent> <C-Right> <c-w>l
nnoremap <silent> <C-Left> <c-w>h
nnoremap <silent> <C-Up> <c-w>k
nnoremap <silent> <C-Down> <c-w>j

map <F9> :%s/['"]/\="'\""[submatch(0)!='"']/g

nmap \fR :Mirror<CR>
command! -bar -range Mirror <line1>,<line2>call setline('.', join(reverse(split(getline('.'), '\zs')), ''))

" Always remove trailing whitespace
autocmd BufWritePre * :%s/\s\+$//e

" Start interactive EasyAlign in visual mode
vmap <Enter> <Plug>(EasyAlign)

" Start interactive EasyAlign with a Vim movement
nmap <Leader>a <Plug>(EasyAlign)

" Configure LightLine
set laststatus=2
if !has('gui_running')
    set t_Co=256
endif
let g:lightline = {
\ 'colorscheme': 'wombat',
\ }
