let g:font = "Consolas"
let g:default_font_size = 14
let g:font_size = g:default_font_size

set guifont=Consolas:h14
set guioptions -=m
set guioptions -=T

" Reloads the font given the current global values
function! RefreshFont()
    execute ":set guifont=" . g:font . ":h" . string(g:font_size)
endfunction

" Resets the font size to their defaults
function! ResetFontSize()
    let g:font_size = g:default_font_size
    call RefreshFont()
endfunction

" Increases the font size by 1
function! IncreaseFontSize()
    let g:font_size += 1
    call RefreshFont()
endfunction

" Decreases the font size by 1
function! DecreaseFontSize()
    let g:font_size -= 1
    call RefreshFont()
endfunction

nnoremap <leader>+ :call IncreaseFontSize()<cr>
nnoremap <leader>- :call DecreaseFontSize()<cr>
