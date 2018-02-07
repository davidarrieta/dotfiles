"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                                                                           "
"                                                                                           "
"                                                                                           "
"                                                                                           "
"                                                                                           "
" __   _____ __  __        __   ___   ___ __  __                         _   ___   __       "
" \ \ / /_ _|  \/  |  ___  \ \ / (_) |_ _|  \/  |_ __ _ _ _____ _____ __| | ( _ ) /  \      "
"  \ V / | || |\/| | |___|  \ V /| |  | || |\/| | '_ \ '_/ _ \ V / -_) _` | / _ \| () |     "
"   \_/ |___|_|  |_|         \_/ |_| |___|_|  |_| .__/_| \___/\_/\___\__,_| \___(_)__/      "
"                                               |_|                                         "
"                                                                                           "
"                                                                                           "
"                                                                                           "
"                                                                                           "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Claudio D. Arrieta's vimrc 
" License: GPLv3
" See https://github.com/DavidArrieta/dotfiles
" for more information
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Sections:
"
"    -> General
"    -> Plugins
"		-> Plugins Settings 
"    -> Indentation
"    -> Keybinds
"    -> Colors and Fonts
"    -> Misc
"
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set encoding=utf8						" Enable UTF-8 by default
set noshowmode							" Don't display the mode in the ruler; we display it in the statusline:
set laststatus=2						" Always show the statusline
set nocompatible						" Use Vim settings, rather then Vi settings (much better!).
										" This must be first, because it changes other options as a side effect.

set history=500							" Sets how many lines of history VIM has to remember
let mapleader = ','						" Set the leader key to ,
let g:mapleader=','						" With a map leader it's possible to do extra key combinations
										" like <leader>w saves the current file

set directory^=$HOME/.vim/tmp//			" Organizing .swp files
set backupdir^=$HOME/.vim/tmp//			" Now the .swp files will stay in your .vim folder

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Plugins
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

filetype off							" Vundle says requires this option be enabled to work properly
set rtp+=~/.vim/bundle/Vundle.vim		" Set the runtime path to include Vundle and initialize
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'			" Let Vundle manage Vundle, required
Plugin 'itchyny/lightline.vim'			" The most lightweight statusline for Vim
Plugin 'nvie/vim-flake8'				" Flake8 python checker for Vim
Plugin 'tpope/vim-commentary'			" Comment stuff out.
Plugin 'tpope/vim-fugitive'				" Git wrapper | Git in vim
Plugin 'tpope/vim-repeat'				" Repeat things but better
Plugin 'tpope/vim-surround'				" Surround plugin. Quoting/parenthesizing made simple
Plugin 'scrooloose/nerdtree'			" Nerdtree plugin
Plugin 'terryma/vim-multiple-cursors'	" Sublime Text's awesome multiple selection feature
Plugin 'ctrlpvim/ctrlp.vim'				" Fuzzy finding
Plugin 'lilydjwg/colorizer'				" Colorizer plugin

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Plugins Settings - fugitive 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" fugitive bindings
nnoremap <Leader>ga :Git add %:p<CR><CR>
nnoremap <Leader>gs :Gstatus<CR>
nnoremap <Leader>gb :Gblame<CR>
nnoremap <Leader>gr :Gread<CR>
nnoremap <Leader>gw :Gwrite<CR>
nnoremap <Leader>gp :Git push<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Plugins Settings - syntastic
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Syntastic bindings
"nnoremap <F4> :SyntasticCheck<CR>
"vnoremap <F4> <ESC>:SyntasticCheck<CR>
"inoremap <F4> <ESC>:SyntasticCheck<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Plugins Settings - NerdTree
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Keybind to open NerdTree with Ctrl + n
map <Leader>n :NERDTreeToggle<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Plugins Settings - multiple cursors
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"Ctrl-n, Ctrl-p, Ctrl-x, and <Esc> are mapped in the special multicursor mode once you've added at least one virtual cursor to 
"the buffer. If you don't like the plugin taking over your favorite key bindings, you can turn off the default with:
let g:multi_cursor_use_default_mapping=0

"You can then map the 'next'(Siguiente), 'previous'(Anterior), 'skip'(<E>scapar), and 'exit(' keys like the following:
let g:multi_cursor_next_key='<A-n>'
let g:multi_cursor_prev_key='<A-p>'
let g:multi_cursor_skip_key='<A-x>'
let g:multi_cursor_quit_key='<Esc>'

"By default, the 'next' key is also used to enter multicursor mode. If you want to use a different key to start multicursor mode than for selecting the next location, do like the following:
" Map start key separately from next key
let g:multi_cursor_start_key='<F6>'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Plugins Settings - Vundle
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"All of your Plugins must be added before the following line
call vundle#end()            "required
filetype plugin indent on    "required. Filetype auto-detection.
"           │     │    └──── Enable file type detection.
"           │     └───────── Enable loading of indent file.
"           └─────────────── Enable loading of plugin files.

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Indentation
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set autoindent

"set smartindent - Do not use smartindent. (https://www.reddit.com/r/vim/wiki/vimrctips)

set smarttab

set shiftwidth=4

set softtabstop=4

set tabstop=4

set noexpandtab

au BufRead,BufNewFile PKGBUILD setl expandtab tabstop=2 shiftwidth=2

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Keybinds
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Keybinds for the built-in spell checker in Vim. 'ss' and 'ns' stands for
" 'set spell' and 'no spell' respectively
nmap <Leader>ss :set spell spelllang=es,en<CR>
nmap <Leader>ns :set nospell<CR>

" Disabling arrow keys – because it’s not enough to use vim, you’ve got to live it. (https://tylercipriani.com/vim.html)
noremap <up> <nop>
inoremap <up> <nop>

noremap <down> <nop>
inoremap <down> <nop>

noremap <left> <nop>
noremap <right> <nop>
inoremap <left> <nop>
inoremap <right> <nop>

" Uh, NOPE! I hate getting stuck in Ex mode...
map Q <Nop>
map gQ <Nop>

" to/from the clipboard
map <Leader>y "*y

map <Leader>p "*p

map <Leader>p "*p

" Shortcut to rapidly toggle `set list`. This shows you the invisible
" characters like spaces, tabs and many more (see :vert h listchars for the
" help window in vertical) with a symbol. In this case, EOLs(End Of Lines) will appear with
" a $. Further reading:
"
"    :help 'list'
"    :help listchars
"    :help hl-NonText
"    :help hl-SpecialKey
"    :help i_CTRL-V_digit - inserting special characters

nmap <leader>l :set list!<CR>

" Mapping <C-e> to execute Python code via Python 3 interpreter
map <silent> <C-e> :call PYTHON()<CR>
func! PYTHON()
	exec "!clear && python3 %"
endfunc

" See more lines on scrolling
if !&sidescrolloff
  set sidescrolloff=5
endif

if &listchars ==# 'eol:$'
  set listchars=tab:>\ ,trail:-,eol:$,extends:>,precedes:<,nbsp:+
endif

" toggle paste mode
map <Leader>P :set invpaste<CR>

" Quick saving
nmap <silent> <Leader>w :update<CR>
nmap <silent> <Leader>q :quit<CR>

" Move quickly through buffers
nnoremap gb :ls<CR>:buffer<Space>

" Move between open buffers
nnoremap <leader>bd :bdelete<CR>
nnoremap <leader>bf :bfirst<CR>
nnoremap <leader>bl :blast<CR>
nnoremap <leader>bn :bnext<CR>
nnoremap <leader>bp :bprevious<CR>

"Toggle line numbers both in normal and insert mode
" (in this example, they're bound to the F3 key)
noremap <F3> :set invnumber<CR> 
inoremap <F3> <C-O>:set invnumber<CR>

" Allow saving of files as sudo when I forgot to start vim using sudo.
cnoremap w!! w !sudo tee % >/dev/null

" Remap :W to :w to avoid typos
command! W w

" Remap :Q to :q to avoid typos 
command! Q q

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Colors and Fonts
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"Line numbers are good
set number

"Turn on syntax highlighting
syntax enable

"To enable by default 256 colors in vim
set t_Co=256

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Misc
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Scripts header
au bufnewfile *.sh 0r $HOME/.vim/sh_header.temp

" sh stuff
autocmd FileType sh set expandtab shiftwidth=2 softtabstop=4

" Run flake8 every time you open a .py file
autocmd BufWritePost *.py call Flake8()

let g:lightline = {
      \ 'colorscheme': 'Tomorrow_Night',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'fugitive#head'
      \ },
      \ }

au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix |

" Force markdown with .md files
autocmd BufNewFile,BufReadPost *.md set filetype=markdown

set wrap " Wrap lines
set linebreak " Wrap lines at convenient points

" This makes sure that shell scripts are highlighted
" as bash scripts and not sh scripts. From valloric
let g:is_posix = 1
"
set incsearch " Find as entering pattern

set ignorecase " Case insensitive patterns,...

set smartcase " When only lowercase is case doesn't matter

"set showcmd " Show (partial) command in the last line of the screen.

set wildmenu "When 'wildmenu' is on, command-line completion operates in an enhanced mode 

" To enable full mouse support in the console. 
"set mouse=a

" Set the history of past actions to 1000.
set undolevels=1000

set hidden " Don't display any error when moving through unsaved buffers

"set ruler " status line there will be something like: 529, 35 68%, representing line 529, column 35, about 68% of the way to the end of the buffer.
"

""""""""""" Maybe they will be useful in the future  """""""""""""""""""

"nnoremap <leader>a :argadd <c-r>=fnameescape(expand('%:p:h'))<cr>/*<C-d>
"nnoremap <leader>b :b <C-d>
"nnoremap <leader>e :e **/
"nnoremap <leader>g :grep<space>
"nnoremap <leader>i :Ilist<space>
"nnoremap <leader>j :tjump /
"nnoremap <leader>m :make<cr>
"nnoremap <leader>s :call StripTrailingWhitespace()<cr>
"nnoremap <leader>q :b#<cr>
"nnoremap <leader>t :TTags<space>*<space>*<space>.<cr>
"inoremap <silent> ,f <C-x><C-f>
"inoremap <silent> ,i <C-x><C-i>
"inoremap <silent> ,l <C-x><C-l>
"inoremap <silent> ,n <C-x><C-n>
"inoremap <silent> ,o <C-x><C-o>
"inoremap <silent> ,t <C-x><C-]>
"inoremap <silent> ,u <C-x><C-u>
