function! s:SetupDefaultHighlight()
    highlight LineNr ctermfg=grey ctermbg=white
    highlight CursorLine cterm=NONE ctermbg=195 ctermfg=NONE guibg=#defefe guifg=NONE
endfunc


function! s:AutoSetupHighlight()
    echom "Enter"
    if exists('g:vsm#highlight_skin')
        echom "exists"
        if g:vsm#highlight_skin == 'default'
            echom "default"
            call s:SetupDefaultHighlight()
        else
            echom "else"
            call s:SetupDefaultHighlight()
        endif
    endif
endfunc


autocmd VimEnter * :call s:AutoSetupHighlight()
