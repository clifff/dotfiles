" Hide toolbar and menubar
set guioptions-=T
set guioptions-=m

" For Commad-T, set cmd+t to that and new tab to cmd+shift+t
if has("gui_macvim")
    " Set cmd+t to the plugin
    map <D-t> :CommandT<CR>
    " Set Shift-Command-T as New Tab
    macmenu &File.New\ Tab key=<D-T>
endif
