" Overview: 
"
" Vim is the most powerful and incredible text editor in the world. 
" Neovim is a port that gets it even better.

" Vimplug is my vim package manager
call plug#begin('~/.local/share/nvim/plugged')                                  

" My current colorscheme
Plug 'sainnhe/vim-color-forest-night'
" seamless navigation between tmux and vim 
Plug 'christoomey/vim-tmux-navigator'
" fuzzy finnd files to edit 
Plug 'ctrlpvim/ctrlp.vim'
" surround utility for brackets, parentheses, etc 
Plug 'tpope/vim-surround'
" Repeat complex operations 
Plug 'tpope/vim-repeat'
" I'm a sucker for great UI things. Airline is one of them 
Plug 'vim-airline/vim-airline'
" Aaand, themes for it, of course. 
Plug 'vim-airline/vim-airline-themes'
" support for javascript 
Plug 'pangloss/vim-javascript'
" support for JSX 
Plug 'maxmellon/vim-jsx-pretty'
" Closes tags with matching (but I think I should move to emmet) 
Plug 'valloric/MatchTagAlways'
" Insert or delete brackets, parens, etc... in pair 
Plug 'jiangmiao/auto-pairs'
" Lints code. from js to shell. Amazing plugin
Plug 'w0rp/ale'
" Comments plugin. Awesome plugin 
Plug 'tpope/vim-commentary'
" Incredible git interface 
Plug 'tpope/vim-fugitive'
" close jsx/html tags 
Plug 'alvan/vim-closetag'
" git gutter better alternative 
Plug 'mhinz/vim-signify'
" Ack, with ag support 
Plug 'mileszs/ack.vim'
" autocompletion. Really powerfull 
Plug 'Valloric/YouCompleteMe', { 'do': './install.py --tern-completer' }

call plug#end()

set background=dark
" Use terminal colors.
set termguicolors
color forest-night 
" highlights current line
set cursorline
" Always write within 80 columns. <3 
set textwidth=80
" Use spaces instead of tabs.
set expandtab
" Set tab size in spaces (this is for manual indenting)
set tabstop=2
set softtabstop=2
set shiftround
" Better splits (new windows appear below and to the right)
set splitbelow
set splitright
" Copy indent from last line when starting new line
set autoindent 
" Highlight searches
set nohlsearch 
" Ignore case of searches
set ignorecase 
" make searches case-sensitive only if they contain upper-case characters
set ignorecase smartcase
" Highlight dynamically as pattern is typed
set incsearch
set ruler
 " Ignore 'ignorecase' if search patter contains uppercase
set smartcase
set winminheight=0
" If a file is changed outside of vim, automatically reload it without asking
set autoread
" The number of spaces inserted for a tab (used for auto indenting)
set shiftwidth=2
" UTF encoding
set encoding=utf-8
" Use system clipboard
" http://stackoverflow.com/questions/8134647/copy-and-paste-in-vim-via-keyboard-between-different-mac-terminals
set clipboard+=unnamed

" disable error bells
set noerrorbells
" redraw only when we need to (i.e. don't redraw when executing a macro)
set lazyredraw
" set space as leader
let mapleader = "\<Space>"
" Split edit your vimrc. Type space, v, r in sequence to trigger
nmap <leader>vr :sp $MYVIMRC<cr>
" edit vimrc in current window 
nmap <leader>ve :e $MYVIMRC<cr>
" reload vimrc without quitting vim 
nmap <leader>so :source $MYVIMRC<cr>
" find things with ag through ack 
nmap <leader>f :Ack<space>

" Wrapped multilines navigation will work
nmap k gk
nmap j gj

" Pre-populate a split command with the current directory
nmap <leader>v :vnew <C-r>=escape(expand("%:p:h"), ' ') . '/'<cr>

" Command aliases for typoed commands (accidentally holding shift too long)
command! Q q " Bind :Q to :q
command! Qall qall
command! QA qall
command! E e

" CtrlP uses ag
let g:ctrlp_user_command = 'ag %s -l --hidden --nocolor -g ""'
let g:ctrlp_use_caching = 0

" number actual current line, but make relative every other line.
set number
set relativenumber

" Bind `q` to close the buffer for help files
autocmd Filetype help nnoremap <buffer> q :q<CR>

" set ale to fix javascript using prettier-eslint on save.
let g:ale_fixers = {'javascript': ['prettier-eslint']}
let g:ale_fix_on_save = 1
" match tag always in jsx
let g:mta_filetypes = {
  \ 'javascript.jsx': 1,
  \}

" lint when text changes
let g:ale_lint_on_text_changed = 'always'
" strip whitespaces (with a package I do not have installed and I can't
" remember, but someday I will)
" let g:strip_whitespace_on_save=1

" mapping jk and kj in Insert mode to escape
imap jk <esc>
imap kj <esc>
 " Sane backspace behavior
set backspace=indent,eol,start 
"show invisibles
set lcs=tab:›\ ,trail:·,eol:¬,nbsp:_
set fcs=fold:-


" Airline configuration
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline_powerline_fonts = 1
let g:airline_theme='minimalist'

" Resizes vim windows when resized (mainly by tmux)
autocmd VimResized * :wincmd =
" zoom a vim pane, <C-w>= to re-balance
nnoremap <leader>- :wincmd _<cr>:wincmd \|<cr>
nnoremap <leader>= :wincmd =<cr>

" close tags on these kind of files
let g:closetag_filenames = "*.html,*.js,*.ts,*.jsx"

" use ag
if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif


