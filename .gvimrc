" Hide toolbar and menubar
set guioptions-=T
set guioptions-=m

" For ctrlp, set cmd+t to that and new tab to cmd+shift+t
if has("gui_macvim")
    " Set cmd+t to the plugin
    map <D-t> :CtrlP<CR>
    " Set Shift-Command-T as New Tab
    macmenu &File.New\ Tab key=<D-T>
endif

set gfn=Inconsolate-dz:h12

" Set some useful ignores for Command-T
set wildignore+=public/cache/*,tmp/*,.sass-cache/*

" Show syntastic errors in location-list
let g:syntastic_auto_loc_list=1
let g:syntastic_auto_loc_list_height=3

