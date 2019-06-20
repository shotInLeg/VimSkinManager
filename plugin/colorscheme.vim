function! s:SetupDefaultColorscheme(light_or_dark)
    if a:light_or_dark == 'light'
        call s:SetupCosmicLatteColorscheme('light')
    else
        colorscheme apprentice
    endif
endfunc


function! s:SetupCosmicLatteColorscheme(light_or_dark)
    if a:light_or_dark == 'light'
        set background=light
        colorscheme cosmic_latte
    else
        set background=dark
        colorscheme cosmic_latte
    endif
endfunc


function! s:AutoSetupColorscheme()
    if exists('g:vsm#colorscheme_skin')
        if g:vsm#colorscheme_skin == 'default'
            call s:SetupDefaultColorscheme('dark')
        elseif g:vsm#colorscheme_skin == 'default-dark':
            call s:SetupDefaultColorscheme('dark')
        elseif g:vsm#colorscheme_skin == 'default-light':
            call s:SetupDefaultColorscheme('light')
        elseif g:vsm#colorscheme_skin == 'cosmic_latte-dark'
            call s:SetupCosmicLatteColorscheme('dark')
        elseif g:vsm#colorscheme_skin == 'cosmic_latte-light'
            call s:SetupCosmicLatteColorscheme('light')
        elseif g:vsm#colorscheme_skin == 'wombat256mod'
            colorscheme wombat256mod
        else
            call s:SetupDefaultColorscheme('dark')
        endif
    endif
endfunc


autocmd VimEnter * :call s:AutoSetupColorscheme()
