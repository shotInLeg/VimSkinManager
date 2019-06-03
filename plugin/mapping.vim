function! s:SetupDefaultMapping()
    nmap <C-h> :tabp<cr>
    vmap <C-h> <esc>:tabp<cr>i
    imap <C-h> <esc>:tabp<cr>i
    nmap <C-l> :tabn<cr>
    vmap <C-l> <esc>:tabn<cr>i
    imap <C-l> <esc>:tabn<cr>i
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
