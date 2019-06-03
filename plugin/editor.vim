function! s:SetupDefaultEditor()
    syntax enable
    set nocompatible
    set tabstop=4
    set softtabstop=4
    set shiftwidth=4
    set expandtab
    set autoindent
    set backspace=indent,eol,start
    set guifont=Menlo\ Regular:h16
    set complete=.,w,b,u
    set cursorline
    set guioptions-=e
endfunc


function! s:AutoSetupEditor()
    if exists('g:vsm#editor_skin')
        if g:vsm#editor_skin == 'default'
            call s:SetupDefaultEditor()
        else
            call s:SetupDefaultEditor()
        endif
    endif
endfunc


autocmd VimEnter * :call s:AutoSetupEditor()
