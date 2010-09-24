set nocompatible  " We don't want vi compatibility.

" stuff from nvie.com/posts/how-i-boosted-my-vim
set hidden
set backspace=indent,eol,start "allow backspacing over everything in insert mode
set autoindent									"always set autoindenting on
set copyindent
set shiftwidth=2								"number of spaces for autoindenting
set shiftround                  "nuse multiple of siftwidth when indenting with '<' and ': 
set showmatch										" show matching parens
set ignorecase									" ignore case when searching
set smartcase										" ignore case if search pattern is all lowercase, case-sensitive otherwise
set smarttab										" insert tabs on the start of a line according to shiftwidth, not tabstop
set hlsearch										" highlight search terms!
set incsearch										" show search matches as you type

set history=1000
set undolevels=1000
set title
set nobackup
set noswapfile
set pastetoggle=<F2>
nnoremap ; :

set ts=2
filetype on  " Automatically detect file types.
filetype plugin on
filetype indent on
colorscheme vividchalk
 
" Minibuffer Explorer Settings
let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapWindowNavArrows = 1
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplModSelTarget = 1
 
" Change which file opens after executing :Rails command
let g:rails_default_file='config/database.yml'

" Quickly edit/reload the vimrc file
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>
 
syntax enable
