set nocompatible

" Specify a directory for plugins (for Neovim: ~/.local/share/nvim/plugged)
call plug#begin('~/.vim/plugged')

" Bottom line in vim
Plug 'bling/vim-airline'

" File navigation
Plug 'scrooloose/nerdtree'

" Git status in the line gutter
Plug 'airblade/vim-gitgutter'

" Clean whitespace
Plug 'ntpeters/vim-better-whitespace'

" Syntax checker
Plug 'w0rp/ale'

" Autocompleter
Plug 'roxma/nvim-completion-manager'
Plug 'roxma/ncm-elm-oracle'

" Syntax highlight
Plug 'kylef/apiblueprint.vim'
Plug 'lepture/vim-jinja'
Plug 'ElmCast/elm-vim'
Plug 'zah/nim.vim'

" Wiki
Plug 'vimwiki/vimwiki'
Plug 'tbabej/taskwiki'

" Colors
Plug 'altercation/vim-colors-solarized'

" Automatically configure indents, line endings etc based on project specific
" config
Plug 'editorconfig/editorconfig-vim'

" Fuzzy file search
" Plug 'ctrlpvim/ctrlp.vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

" Undo tree
Plug 'sjl/gundo.vim'

call plug#end()

" Syntax coloring
filetype plugin indent on
syntax on

" spelling
set spellfile=~/.config/nvim/spell/en.utf-8.add
set spell spelllang=en_us

" Colors
"set background=light
"colorscheme solarized

highlight SpellBad ctermfg=red

" Global encoding settings
set encoding=utf-8
setglobal fileencoding=utf-8
set nobomb
set termencoding=utf-8
set fileencoding=utf-8

" Config for backup and swp files
set backup
set backupdir=~/.vim/backup
set directory=~/.vim/tmp

" Airline config
let g:airline#extensions#tabline#enabled = 1
set laststatus=2

" Gutter config
set relativenumber
set number

" Color the lines so we don't write too loong lines
set colorcolumn=81,101

" Default backspace is a bit restrictive
set backspace=indent,eol,start

" Search config
set ignorecase
set smartcase
set incsearch

" Highlight/Un-highlight search terms
noremap <F4> :set hlsearch! hlsearch?<CR>

" Auto center search
nmap n nzz
nmap N Nzz

" Stay in center line
set scrolloff=50

" Paste toggle
set pastetoggle=<F3>

" Undo tree
nnoremap <F5> :GundoToggle<CR>

" List all files in current dir using FZF
map f :Files<CR>

" List all open buffers using FZF
nmap ; :Buffers<CR>

" White space
set tabstop=4
set shiftwidth=4
set softtabstop=4

" Kill the mouse
set mouse=

" Common typos
command Q q
command Wq wq
command WQ wq
command W w

" Splits
set splitbelow
set splitright

" Split navigation
nnoremap <Right> <C-w>l
nnoremap <Left> <C-w>h
nnoremap <Up> <C-w>k
nnoremap <Down> <C-w>j
nnoremap <S-Right> :bnext<CR>
nnoremap <S-Left> :bprevious<CR>

" Jumping to errors
nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)

" NerdTree
map <C-n> :NERDTreeToggle<CR>
let NERDTreeIgnore = ['\.pyc$', '\~$', '__pycache__']

" Ale python config
let g:ale_linters = {'python': ['pylint'], }

" Fix whitespace on save
autocmd BufEnter * EnableStripWhitespaceOnSave
