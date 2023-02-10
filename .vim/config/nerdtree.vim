""""""""""""""""""""""""""""""""""""""""
" => NERDTree config
""""""""""""""""""""""""""""""""""""""""
map <F2> :NERDTreeToggle<CR>
let g:NERDTreeWinSize = 25          " windowsize setting
" let NERDTreeShowBookmarks=1  " 开启Nerdtree时自动显示Bookmarks
" 当NERDTree为剩下的唯一窗口时自动关闭
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" 设置树的显示图标
" let g:NERDTreeShowLineNumbers=1  " 是否显示行号
let g:NERDTreeHidden=0     "不显示隐藏文件
" Making it prettier
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
