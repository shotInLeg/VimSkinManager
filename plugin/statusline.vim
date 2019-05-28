function! s:SetupDefaultStatusLine()
    set laststatus=2
    set statusline=
    set statusline+=\ %f
    set statusline+=%=
    set statusline+=%#CursorColumn#
    set statusline+=\ %l:%c
    set statusline+=\ 
endfunc


function! s:AutoSetupStatusLine()
    if exists('g:vsm#statusline_skin')
        if g:vsm#statusline_skin == 'default'
            call s:SetupDefaultStatusLine()
        else
            call s:SetupDefaultStatusLine()
        endif
    endif
endfunc


autocmd VimEnter * :call s:AutoSetupStatusLine()
