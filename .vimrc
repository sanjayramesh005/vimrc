set exrc
set number
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4

set autoindent

filetype plugin indent on

"set textwidth=80
"set guifont=Droid\ Sans\ Mono\ 13
"set guifont=Bitstream\ Vera\ Sans\ Mono\ 11
set guifont=Monaco:h11

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
"set background=dark
"colorscheme solarized
"colorscheme molokai

set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'L9'
Plugin 'scrooloose/nerdtree'			" Directory structure Plugin
Plugin 'Xuyuanp/nerdtree-git-plugin'	" Shows git status in the dir structure
Plugin 'tmhedberg/SimpylFold'           " Code Folding for python
Plugin 'vim-scripts/indentpython.vim'   " Indentation
Plugin 'Valloric/YouCompleteMe'         " Code Completion - does not work fully yet
Plugin 'scrooloose/syntastic'           " Syntax Checking Plugin(almost all popular languages)
Plugin 'nvie/vim-flake8'                " Runs flake8 on python modules
" Plugin 'wincent/command-t'            " Search tool - Alternative ctrlp is being used
Plugin 'scrooloose/nerdcommenter'       " Easy commenting
Plugin 'mattn/emmet-vim'                " HTML/CSS expanding abbreviations
Plugin 'itchyny/lightline.vim'          " Status line
Plugin 'tpope/vim-surround'             " Changing the surrounding delimeters
Plugin 'bling/vim-airline'              " Status line
Plugin 'artur-shaik/vim-javacomplete2'  " Omni Completion plugin for Java
Plugin 'mileszs/ack.vim'                " Search Tool
Plugin 'dracula/vim'                    " Color scheme
Plugin 'kien/ctrlp.vim'                 " Search tool
Plugin 'jiangmiao/auto-pairs'           " Auto closing of braces, quotes etc.
call vundle#end()

if has("gui_gtk2")
filetype plugin indent on
endif

set clipboard=unnamed
"let g:neocomplete#enable_at_startup = 1
let g:ackprg="ack-grep -H --nocolor --nogroup --column"

" SimpylFold configuration
let g:SimpylFold_docstring_preview = 1

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

" Enable omni completion
"autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
"autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
"autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
"autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
"autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
"
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

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
syntax on
color dracula

set tags=tags
set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'

" Highlight trailing whitespace when in normal mode
"autocmd InsertLeave * redraw!
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
"autocmd BufWinLeave * call clearmatches()

" Syntastic - disable style checking
let g:syntastic_quiet_messages = { "type": "style" }

highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%80v.\+/
autocmd BufWinEnter * match OverLength /\%80v.\+/
autocmd InsertEnter * match OverLength /\%80v.\+/
autocmd InsertLeave * match OverLength /\%80v.\+/
autocmd BufWinLeave * match OverLength /\%80v.\+/

