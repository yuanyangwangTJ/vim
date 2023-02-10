" youcompleteme

" Let clangd fully control code completion
let g:ycm_use_clangd = 1
" let g:ycm_clangd_uses_ycmd_caching = 0

" Use installed clangd, not YCM-bundled clangd which doesn't get updates.
" let g:ycm_clangd_binary_path = exepath("clangd")

let g:ycm_enable_semantic_highlighting=1
let g:ycm_clangd_args = [ 
    \'--header-insertion=never'
    \]

" weird window at the top of file
set completeopt-=preview
let g:ycm_add_preview_to_completeopt=0
let g:ycm_echo_current_diagnostic = 1
let g:ycm_echo_current_diagnostic = 'virtual-text'

let g:ycm_semantic_triggers = {
    \'c,cpp,objc': [ 're!\w{3}', '_' ],
    \}

" make YCM compatible with UltiSnips (using supertab)
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'

" function! s:customGoToInclude() abort
"     let s:pre_filetype = &filetype
"     YcmCompleter GoToInclude
"     if s:pre_filetype == 'cpp'
"         if &filetype != 'cpp'
"             set filetype=cpp
"         endif
"     endif
" endfunction

nnoremap <leader>gdf :YcmCompleter GoToDefinition<CR>
nnoremap <leader>gdc :YcmCompleter GoToDeclaration<CR>
nnoremap <leader>gin :YcmCompleter GoToInclude<CR>
nnoremap <leader>gim :YcmCompleter GoToImplementation<CR>


