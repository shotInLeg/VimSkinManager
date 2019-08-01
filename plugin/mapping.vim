function! s:SetupDefaultMapping()
    nmap <silent> <C-h> :tabp<cr>
    vmap <silent> <C-h> <esc>:tabp<cr>i
    imap <silent> <C-h> <esc>:tabp<cr>i
    nmap <silent> <C-l> :tabn<cr>
    vmap <silent> <C-l> <esc>:tabn<cr>i
    imap <silent> <C-l> <esc>:tabn<cr>i
    nmap <silent> <C-j> :tabc<cr>
    vmap <silent> <C-j> <esc>:tabc<cr>i
    imap <silent> <C-j> <esc>:tabc<cr>i
    nmap <silent> <C-k> :silent! w<cr>
    vmap <silent> <C-k> <esc>:silent! w<cr>i
    imap <silent> <C-k> <esc>:silent! w<cr>i
endfunc


function! s:AutoSetupMapping()
    if exists('g:vsm#mapping_skin')
        if g:vsm#mapping_skin == 'default'
            call s:SetupDefaultMapping()
        else
            call s:SetupDefaultMapping()
        endif
    endif
endfunc


autocmd VimEnter * :call s:AutoSetupMapping()
