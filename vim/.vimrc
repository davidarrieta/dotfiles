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
"                                                                                           "
" Sections:
"
"    -> General, starts at line 30
"    -> Plugins and specific keybinds for that plugins, starts at line 42
"    -> Indentation, starts at line 103
"    -> Keybinds, starts at line 120
"    -> Colors and Fonts, starts at line 173
"    -> Misc, starts at line 186
"
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"Use Vim settings, rather then Vi settings (much better!).
"This must be first, because it changes other options as a side effect.
set nocompatible

" Sets how many lines of history VIM has to remember
set history=500

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Plugins
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"Vundle says requires this option be enabled to work properly
filetype off

"set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Nerdtree plugin
Plugin 'scrooloose/nerdtree'

" Keybind to open NerdTree with Ctrl + n
map <C-n> :NERDTreeToggle<CR>

" Vim Multiple Cursors plugin, Sublime Text's awesome multiple selection feature into Vim. 
Plugin 'terryma/vim-multiple-cursors'

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

" Colorizer plugin
Plugin 'lilydjwg/colorizer'

"CtrlP plugin
Plugin 'ctrlpvim/ctrlp.vim'

" Surround plugin. Quoting/parenthesizing made simple
Plugin 'tpope/vim-surround'

"All of your Plugins must be added before the following line
call vundle#end()            "required
filetype plugin indent on    "required. Filetype auto-detection.


" ================ Indentation ======================

set autoindent

"set smartindent - Do not use smartindent. (https://www.reddit.com/r/vim/wiki/vimrctips)

set smarttab

set shiftwidth=4

set softtabstop=4

set tabstop=4

set noexpandtab

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Keybinds
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Set the leader key to ,
" With a map leader it's possible to do extra key combinations
" like <leader>w saves the current file
let mapleader = ','
let g:mapleader=','

" Disabling arrow keys – because it’s not enough to use vim, you’ve got to live it. (https://tylercipriani.com/vim.html)
noremap <up> <nop>
inoremap <up> <nop>

noremap <down> <nop>
inoremap <down> <nop>

noremap <left> <nop>
noremap <right> <nop>
inoremap <left> <nop>
inoremap <right> <nop>

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
func PYTHON()
	exec "!clear && python3 %"
endfunc

" Use the same symbols as TextMate for tabstops and EOLs
set listchars=tab:▸\ ,eol:$ 

" toggle paste mode
map <Leader>P :set invpaste<CR>

" Quick saving
nmap <silent> <Leader>w :update<CR>
nmap <silent> <Leader>q :quit<CR>

" Move quickly through buffers
nnoremap gb :ls<CR>:buffer<Space>

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

"Toggle line numbers both in normal and insert mode
" (in this example, they're bound to the F3 key)
noremap <F3> :set invnumber<CR> 
inoremap <F3> <C-O>:set invnumber<CR>

set wrap " Wrap lines
set linebreak " Wrap lines at convenient points

" This makes sure that shell scripts are highlighted
" as bash scripts and not sh scripts. From valloric
let g:is_posix = 1

nnoremap <F4> :SyntasticCheck<CR>
vnoremap <F4> <ESC>:SyntasticCheck<CR>
inoremap <F4> <ESC>:SyntasticCheck<CR>

" Allow saving of files as sudo when I forgot to start vim using sudo.
cnoremap w!! w !sudo tee % >/dev/null

" Remap :W to :w
command W w

set incsearch " Find as entering pattern

set ignorecase " Case insensitive patterns,...

set smartcase " When only lowercase is case doesnt matter

set showcmd " Show (partial) command in the last line of the screen.

set wildmenu "When 'wildmenu' is on, command-line completion operates in an enhanced mode 

" To enable full mouse support in the console. 
"set mouse=a

" Set the history of past actions to 1000.
set undolevels=1000

set hidden " Don't display any error when moving through unsaved buffers

set ruler " status line there will be something like: 529, 35 68%, representing line 529, column 35, about 68% of the way to the end of the buffer.


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
