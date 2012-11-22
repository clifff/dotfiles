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

" Setup solarized scheme
syntax enable
set background=dark
colorscheme Tomorrow-Night-Bright

" Meta+1-0 jumps to tab 1-10, Shift+Meta+1-0 jumps to tab 11-20:
let s:windowmapnr = 0
let s:wins='1234567890!@#$%^&*()'
while (s:windowmapnr < strlen(s:wins))
    exe 'noremap <silent> <D-' . s:wins[s:windowmapnr] . '> ' . (s:windowmapnr + 1) . 'gt'
    exe 'inoremap <silent> <D-' . s:wins[s:windowmapnr] . '> <C-O>' . (s:windowmapnr + 1) . 'gt'
    exe 'cnoremap <silent> <D-' . s:wins[s:windowmapnr] . '> <C-C>' . (s:windowmapnr + 1) . 'gt'
    exe 'vnoremap <silent> <D-' . s:wins[s:windowmapnr] . '> <C-C>' . (s:windowmapnr + 1) . 'gt'
    let s:windowmapnr += 1
endwhile
unlet s:windowmapnr s:wins

" Files to ignore for Command-T / other listings
set wildignore+=*.o,*.obj,.git,public/stylesheets/**,public/cache/**,tmp/**

" Show whitespace
set list listchars=tab:»·,trail:·
" Highlight trailing/leading whitespace
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+\%#\@<!$/

" Highlight 80 character boundry
set colorcolumn=81

" Show syntastic errors in location-list
let g:syntastic_auto_loc_list=1
let g:syntastic_auto_loc_list_height=3

" Load up pathogen / plugins
call pathogen#infect()
