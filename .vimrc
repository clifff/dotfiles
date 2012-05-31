set nocompatible  " We don't want vi compatibility.

" stuff from nvie.com/posts/how-i-boosted-my-vim
set backspace=indent,eol,start "allow backspacing over everything in insert mode
set autoindent									"always set autoindenting on   
set copyindent
set shiftwidth=2								"number of spaces for autoindenting
set shiftround                  "nuse multiple of siftwidth when indenting with '<' and ': 
set showmatch										" show matching parens
set ignorecase									" ignore case when searching
set smartcase										" ignore case if search pattern is all lowercase, case-sensitive otherwise
set hlsearch										" highlight search terms!
set incsearch										" show search matches as you type

" When searching, will wrap from bottom of buffer to top when 'nexting'
set wrapscan

" Use spaces instead of the actual tab char
set expandtab
set tabstop=2

" Show line numbers
set number

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
 
syntax enable

" Load up pathogen / plugins
call pathogen#infect()
