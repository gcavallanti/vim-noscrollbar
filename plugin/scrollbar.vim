if &cp || exists('g:scroll_loaded')
  finish
endif

let g:scrollbar_loaded = 1

function! ScrollBar(...)
    let top_line = line("w0")
    let bottom_line = line("w$")
    let current_line = line('.')
    let lines_count = line('$')

    if a:1 
        let size = str2nr(a:1)
    else
        let size = 10
    endif
    let pos = float2nr((current_line * 1.0) / (lines_count * 1.0) * size)
    let scroll_bar = repeat(' ', pos) . '::' . repeat(' ',size-pos)
    return scroll_bar
endfunction
