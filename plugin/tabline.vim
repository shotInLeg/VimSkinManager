function! IsBufferModified(buflist)
    for bufnr in a:buflist
        if getbufvar(bufnr, '&modified')
            return ' *'
        endif
    endfor

    return ''
endfunc


function! BuildDefaultTabLine()
    let tabline = ''

    for ti in range(tabpagenr('$'))
        " ищем название буфера, чтобы поместить его в название вкладки
        let buflist = tabpagebuflist(ti + 1)
        let winnr = tabpagewinnr(ti + 1)
        let buffername = bufname(buflist[winnr - 1])
        let filename = fnamemodify(buffername, ':p:t')
        let modified = IsBufferModified(buflist)
        let tabnum = ti + 1

        " Если мы имеем дело с активной вкладкой — подсвечиваем ее красной
        if ti + 1 == tabpagenr() && modified != ''
            let tabline .= '%#errorMsg#'
        elseif ti + 1 == tabpagenr()
            let tabline .= '%#TabLineSel#'
        else
            let tabline .= '%#TabLine#'
        endif

        " Если нет названия — то так и говорим 'буфер без названия' (noname)
        if filename == ''
            let filename = '[No Name]'
        endif

        let tabline .= ' [' . tabnum . '] ' . filename . modified . ' '
    endfor

    " заполняем лишнее пространство
    let tabline .= '%#TabLineFill#%T'

    return tabline
endfunc


function! s:SetupDefaultTabLine()
    set tabline=%!BuildDefaultTabLine()
endfunc


function! s:AutoSetupTabLine()
    if exists('g:vsm#tabline_skin')
        set showtabline=2
        if g:vsm#tabline_skin == 'default'            
            call s:SetupDefaultTabLine()
        else
            call s:SetupDefaultTabLine()
        endif
    endif
endfunc


autocmd VimEnter * :call s:AutoSetupTabLine()
