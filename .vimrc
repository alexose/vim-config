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
Bundle 'ciaranm/detectindent'

set background=dark

" Use incremental searching
set incsearch

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
au BufNewFile,BufRead *.ftl set filetype=html

" Space + p to toggle paste
map <Leader>p :set paste!<CR>

" Disable ex mode
map Q <nop>

" Disable encryption on :X
cnoreabbrev X x

" Q saves and quits current window
map Q :x<CR>

set expandtab

" Toggle between two and four spaces
let g:spaces = 4
function! TabToggle()
  if g:spaces == 2
    echo "Switching to " . g:spaces . " spaces."
    let &tabstop     = g:spaces
    let &shiftwidth  = g:spaces
    let &softtabstop = g:spaces
    set noexpandtab!
    let g:spaces = 4
  elseif g:spaces == 4
    echo "Switching to " . g:spaces . " spaces."
    let &tabstop     = g:spaces
    let &shiftwidth  = g:spaces
    let &softtabstop = g:spaces
    set noexpandtab!
    let g:spaces = 0
  else
    echo "Switching to tabs."
    let &tabstop     = 4
    let &shiftwidth  = 4
    let &softtabstop = 4
    let g:spaces = 2
    set noexpandtab
  endif
endfunction

nmap <Leader>t :call TabToggle()<CR>
silent call TabToggle()

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
