"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
"  _  _             _               _____ _          ___     _                       __  __   ___       _ 
" | \| |___ _____ _(_)_ __    ___  |_   _| |_  ___  | __|  _| |_ _  _ _ _ ___   ___ / _| \ \ / (_)_ __ | |
" | .` / -_) _ \ V / | '  \  |___|   | | | ' \/ -_) | _| || |  _| || | '_/ -_) / _ \  _|  \ V /| | '  \|_|
" |_|\_\___\___/\_/|_|_|_|_|         |_| |_||_\___| |_| \_,_|\__|\_,_|_| \___| \___/_|     \_/ |_|_|_|_(_)
"
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
                                                                                                         

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Claudio D. Arrieta's init.vim
" License: GPLv3
" See https://github.com/DavidArrieta/dotfiles
" for more information
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Sections:
"
"    -> General
"    -> Appearance
"    -> Indentation
"    -> Keybinds
"    -> Plugins
"		-> Plugins Settings 
"    -> Misc
"		-> * stuff
"
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Enable UTF-8 by default
set encoding=utf8
"
" Use Vim settings, rather than Vi settings (much better!). 
" This must be first, because it changes other options as a side effect.
set nocompatible
"
" Sets how many lines of history VIM has to remember
set history=500
"
" Set the leader key to ,
" With a map leader it's possible to do extra key combinations
" like <leader>w saves the current file
let mapleader = ','
let g:mapleader=','
"
" Organize.swp files, Now the .swp files will stay in your ~/.vim folder
set directory^=$HOME/.vim/tmp//			
set backupdir^=$HOME/.vim/tmp//
"
" Find as entering pattern
set incsearch	
" Case insensitive patterns,...
set ignorecase	
" When only lowercase is case doesn't matter
set smartcase	
" Case aware smarter completions see http://bit.ly/2oxIx5l for more info
set infercase	
"
"When 'wildmenu' is on, command-line completion operates in an enhanced mode 
set wildmenu 
"
" Set the history of past actions to 1000.
set undolevels=1000
"
" Don't display any error when moving through unsaved buffers
set hidden 
"
" This makes sure that shell scripts are highlighted
" as bash scripts and not sh scripts. From valloric
let g:is_posix = 1

" Search down into subfolders
" Provides tab-completion for all file-related tasks
set path+=**

" Set to auto read when a file is changed from the outside
set autoread

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Appearance
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"Turn on syntax highlighting
syntax enable
"
"To enable by default 256 colors in vim
set t_Co=256
"
set background=dark
"
" Don't display the mode in the ruler, we display it in the statusline
set noshowmode
"
" Always show the statusline
set laststatus=2
"
" Line numbers are good
set number
"
" Show (partial) command in the last line of the screen.
"set showcmd 
"
" Wrap lines
set wrap 
" But wrap lines at convenient points
set linebreak 
"

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Indentation
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set autoindent
"
"set smartindent - Do not use smartindent. Source: https://www.reddit.com/r/vim/wiki/vimrctips
"
set smarttab
"
set shiftwidth=4
"
set softtabstop=4
"
set tabstop=4
"
set noexpandtab
"


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Keybinds
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Keybinds for the built-in spell checker in Vim. 'ss' and 'ns' stands for
" 'set spell' and 'no spell' respectively
" Use 'z=' and Vim will suggest a list of 
" alternatives that it thinks may be correct.
nmap <Leader>ss :set spell spelllang=es,en<CR>
nmap <Leader>ns :set nospell<CR>

" Disable arrow keys – because it’s not enough to use vim, you’ve got to live it. (https://tylercipriani.com/vim.html)
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

" Copy and paste to/from the clipboard
map <Leader>y "*y

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

" See more lines on scrolling
if !&sidescrolloff
  set sidescrolloff=5
endif

if &listchars ==# 'eol:$'
  set listchars=tab:>\ ,trail:-,eol:$,extends:>,precedes:<,nbsp:+
endif

" Quick save
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
" => Plugins
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Specify a directory for plugins
" - For Vim: ~/.vim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.local/share/nvim/plugged')

Plug 'itchyny/lightline.vim'			" The most lightweight statusline for Vim
Plug 'tpope/vim-commentary'			" Comment stuff out.
Plug 'tpope/vim-fugitive'				" Git integration
Plug 'tpope/vim-repeat'				" Repeat things but better
Plug 'tpope/vim-surround'			" Surround plugin. Quoting/parenthesizing made simple
Plug 'tpope/vim-vinegar'				" vinegar.vim enhances netrw (The built in directory browser)
Plug 'terryma/vim-multiple-cursors'		" Sublime Text's awesome multiple selection feature
Plug 'lilydjwg/colorizer'				" Colorizer plugin


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
" => Plugins Settings - Lightline
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let g:lightline = {
      \ 'colorscheme': 'seoul256',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'fugitive#head'
      \ },
      \ }


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Plugins Settings - VimPlug
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" All your plugins must be added BEFORE this line
" Initialize plugin system
call plug#end()


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Misc
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Persistent undo. See http://bit.ly/2FwrGa5 for more info
let s:undoDir = "/tmp/.undodir_" . $USER	
if !isdirectory(s:undoDir)					 
    call mkdir(s:undoDir, "", 0700)
endif
let &undodir=s:undoDir
set undofile


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Bash stuff
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Scripts header (Thanks to Tecmint. Source: http://bit.ly/2FiMD8A)
au bufnewfile *.sh 0r $HOME/.vim/sh_header.temp
"
" Automatically set the default indentation when opening a .sh file
autocmd FileType sh set expandtab shiftwidth=2 softtabstop=4

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Python stuff
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Run flake8 every time you open a .py file
autocmd BufWritePost *.py call Flake8()
"
" Automatically set the default indentation when opening a .py file
au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix |

" Use <C-e> to execute Python code via Python 3 interpreter
map <silent> <C-e> :call PYTHON()<CR>
func! PYTHON()
	exec "!clear && python3 %"
endfunc


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => PKGBUILD stuff
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Automatically set the default indentation when opening a PKGBUILD 
au BufRead,BufNewFile PKGBUILD setl expandtab tabstop=2 shiftwidth=2
"


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Markdown stuff
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Live preview markdown thanks to grip
noremap <silent> <leader>om :call OpenMarkdownPreview()<cr>

function! OpenMarkdownPreview() abort
  if exists('s:markdown_job_id') && s:markdown_job_id > 0
    call jobstop(s:markdown_job_id)
    unlet s:markdown_job_id
  endif
  let s:markdown_job_id = jobstart('grip ' . shellescape(expand('%:p')))
  if s:markdown_job_id <= 0 | return | endif
  call system('open http://localhost:6419')
endfunction

