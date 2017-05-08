set number

set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4

set autoindent

filetype plugin indent on

"set textwidth=80
"set guifont=Droid\ Sans\ Mono\ 13 
set guifont=Bitstream\ Vera\ Sans\ Mono\ 11 "set guifont=*

func! WordProcessorMode()
    setlocal textwidth=80
    setlocal smartindent
    setlocal spell spelllang=en_us
    setlocal noexpandtab
endfu

com! WP call WordProcessorMode()

"colorscheme darkblue
"au InsertLeave * colorscheme darkblue
"au InsertEnter * colorscheme molokai

syntax enable
set background=dark
"colorscheme solarized
colorscheme molokai

set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'L9'
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'tmhedberg/SimpylFold'
Plugin 'vim-scripts/indentpython.vim'
Bundle 'Valloric/YouCompleteMe'
Plugin 'scrooloose/syntastic'
Plugin 'nvie/vim-flake8'
Plugin 'wincent/command-t'
Plugin 'scrooloose/nerdcommenter'
Plugin 'mattn/emmet-vim'
Plugin 'itchyny/lightline.vim'
"Plugin 'tpope/vim-surround'
Plugin 'bling/vim-airline'
Plugin 'artur-shaik/vim-javacomplete2'
Plugin 'mileszs/ack.vim'
"Bundle 'nsf/gocode'
"Bundle 'Blackrush/vim-gocode'
"Bundle 'Shougo/neocomplete'
"Bundle 'Shougo/echodoc.vim'
call vundle#end()

if has("gui_gtk2")
filetype plugin indent on
endif

set clipboard=unnamed
"let g:neocomplete#enable_at_startup = 1
let g:ackprg="ack-grep -H --nocolor --nogroup --column"

" Open a new tab and search for something
nmap <leader>a :tab split<CR>:Ack ""<Left>

" Immediately search for the word under the cursor in new tab
nmap <leader>A :tab split<CR>:Ack ""<Left>

map <C-n> :NERDTreeToggle<CR>

set foldmethod=indent
set foldlevel=99

nnoremap <space> za
au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    "\ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix |

highlight ExtraWhitespace ctermbg=red guibg=red
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match ExtraWhitespace /\s\+$/

au BufNewFile,BufRead *.js, *.html, *.css
    \ set tabstop=2 |
    \ set softtabstop=2 |
    \ set shiftwidth=2 |
    \ set autoindent |
set encoding=utf-8

let g:ycm_python_binary_path = 'python'
let g:ycm_global_ycm_extra_conf = "~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py"

"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

set cul

nnoremap L :tabn<CR>
nnoremap H :tabp<CR>

" Plugin - neocomplete
"let g:neocomplete#sources#dictionary#dictionaries = {
"    \ 'default' : '',
"    \ 'vimshell' : $HOME.'/.vimshell_hist',
"    \ 'scheme' : $HOME.'/.gosh_completions'
        \ }
" <TAB> completion
" inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"

" Enable omni completion 
"autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
"autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
"autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
"autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
"autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
"
" Add spaces after comment delimiters by default
" let g:NERDSpaceDelims = 1

" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1
" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'

" Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'c': { 'left': '/*','right': '*/' } }

" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1

" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1

" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1
