" =============================================================================
"   PLUGINS
" =============================================================================
call plug#begin()
" Colorschemes
Plug 'morhetz/gruvbox'
Plug 'chriskempson/base16-vim'         " Base16 themes
Plug 'patstockwell/vim-monokai-tasty'

" Writing
Plug 'junegunn/goyo.vim'               " Distraction free mode
Plug 'junegunn/limelight.vim'          " Focus on current paragraph
Plug 'rhysd/vim-grammarous'            " GrammarCheck using LanguageTool
Plug 'ron89/thesaurus_query.vim'       " Synonym query

" Syntactic language support
Plug 'w0rp/ale'                        " Linting engine
Plug 'maximbaz/lightline-ale'          " Lightline + Ale
Plug 'plasticboy/vim-markdown'         " Markdown support
Plug 'cespare/vim-toml'                " TOML support
Plug 'stephpy/vim-yaml'                " YAML support
Plug 'elzr/vim-json'                   " Better JSON support
Plug 'rust-lang/rust.vim'              " Rust support
Plug 'glench/vim-jinja2-syntax'        " Jinja2 support
"Plug 'lervag/vimtex'                   " Latex support
Plug 'pearofducks/ansible-vim'         " Ansible support
Plug 'mechatroner/rainbow_csv'         " CSV color coding
Plug 'ap/vim-css-color'                " CSS colors
Plug 'frazrepo/vim-rainbow'            " Rainbow parentheses
Plug 'vim-pandoc/vim-pandoc'           " Pandoc support
Plug 'vim-pandoc/vim-pandoc-syntax'    " Pandoc syntax
Plug 'chrisbra/colorizer'              " Colorize color codes
Plug 'liuchengxu/vista.vim'
Plug 'vim-python/python-syntax'

" Autocomplete
" Plug 'ervandew/supertab'
" Semantic language support
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" GUI enhancements
Plug 'itchyny/lightline.vim'          " Better Status Bar
Plug 'mhinz/vim-startify'             " Better start screen
Plug 'scrooloose/nerdtree'            " File explorer
Plug 'sjl/gundo.vim'                  " Undo Tree
Plug 'simnalamburt/vim-mundo'         " Gundo fork
Plug 'majutsushi/tagbar'              " Pane with tags
Plug 'machakann/vim-highlightedyank'  " Highlight yanks
Plug 'andymass/vim-matchup'           " Highlight corresponding blocks e.g. if - fi in bash
Plug 'kshenoy/vim-signature'          " Show marks in the gutter
Plug 'yggdroot/indentline'            " Shows indentation levels
Plug 'tpope/vim-eunuch'               " Unix helpers


call plug#end()

syntax on								" enable syntax processing

" Spaces & Tabs
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set tabstop=4       					" number of visual spaces per TAB
set softtabstop=4   					" number of spaces in tab when editing
set shiftwidth=4    					" Insert 4 spaces on a tab
set expandtab       					" tabs are spaces, mainly because of python

" UI Config
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set number                               " show line numbers
set relativenumber                       " show relative numbering
set showcmd                              " show command in bottom bar
set cursorline                           " highlight current line
filetype indent on                       " load filetype-specific indent files
filetype plugin on                       " load filetype specific plugin files
set wildmenu                             " visual autocomplete for command menu
set showmatch                            " highlight matching [{()}]
set laststatus=2                         " Show the status line at the bottom
set mouse+=a                             " A necessary evil, mouse support
set noerrorbells visualbell t_vb=        "Disable annoying error noises
set splitbelow                           " Open new vertical split bottom
set splitright                           " Open new horizontal splits right
set linebreak                            " Have lines wrap instead of continue off-screen
set scrolloff=12                         " Keep cursor in approximately the middle of the screen
set updatetime=100                       " Some plugins require fast updatetime
set ttyfast                              " Improve redrawing

" Buffers
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set hidden                               " Allows having hidden buffers (not displayed in any window)

" Sensible stuff
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set backspace=indent,eol,start           " Make backspace behave in a more intuitive way
nmap Q <Nop>                            
                                         " 'Q' in normal mode enters Ex mode. You almost never want this.                          
" Unbind for tmux
map <C-a> <Nop>
map <C-x> <Nop>

"Searching
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set incsearch                            " search as characters are entered
set hlsearch                             " highlight matches
set ignorecase                           " Ignore case in searches by default
set smartcase                            " But make it case sensitive if an uppercase is entered
" turn off search highlight
vnoremap <C-h> :nohlsearch<cr>
nnoremap <C-h> :nohlsearch<cr>
" Ignore files for completion
set wildignore+=*/.git/*,*/tmp/*,*.swp

" Undo
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set undofile                             " Maintain undo history between sessions
set undodir=~/.vim/undodir               " Dir to store the undo history

" Folding
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set foldenable                           " enable folding
set foldlevelstart=10                    " open most folds by default
set foldnestmax=10                       " 10 nested fold max
set foldmethod=indent                    " fold based on indent level

" Movement
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" move vertically by visual line
nnoremap j gj
nnoremap k gk
" highlight last inserted text
nnoremap gV `[v`]i

" Jump to start and end of line using the home row keys
map H ^
map L $

" (Shift)Tab (de)indents code
vnoremap <Tab> >
vnoremap <S-Tab> <

" Lose Bad Habits
" http://vimcasts.org/blog/2013/02/habit-breaking-habit-making/
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Remove newbie crutches in Command Mode
" cnoremap <Down> <Nop>
" cnoremap <Left> <Nop>
" cnoremap <Right> <Nop>
" cnoremap <Up> <Nop>

" Remove newbie crutches in Insert Mode
" inoremap <Down> <Nop>
" inoremap <Left> <Nop>
" inoremap <Right> <Nop>
" inoremap <Up> <Nop>

" Remove newbie crutches in Normal Mode
nnoremap <Down> <Nop>
nnoremap <Left> <Nop>
nnoremap <Right> <Nop>
nnoremap <Up> <Nop>

" Remove newbie crutches in Visual Mode
vnoremap <Down> <Nop>
vnoremap <Left> <Nop>
vnoremap <Right> <Nop>
vnoremap <Up> <Nop>

" Enable hard home so hjkl are disabled
" autocmd VimEnter,BufNewFile,BufReadPost * silent! call HardMode()

" Filetype configs
autocmd BufNewFile,BufRead *.yml.j2 set syntax=yaml   "Jinja yml (mostly for Ansible) gets linted as yaml

" =============================================================================
"   CUSTOM FUNCTIONS
" =============================================================================

" toggle between number and relativenumber
function! ToggleLineNumber()
    if(&relativenumber == 1)
        set norelativenumber
        set number
    else
        set relativenumber
    endif
endfunc
