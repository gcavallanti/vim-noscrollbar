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

    let top_line_perc = float2nr((top_line - 1.0) / lines_count * size)
    let scroll_bar_gripper_size = float2nr(ceil((bottom_line - top_line + 1.0)/ lines_count * size)) 
    if (top_line > 1) && (top_line_perc == 0)
        " users expect to see the scrollbar in the leftmost position only if we
        " are at the very top of the buffer
        let top_line_perc = 1
        if (scroll_bar_gripper_size + top_line_perc > size)
            let scroll_bar_gripper_size = scroll_bar_gripper_size - 1
        endif
    endif

    if (lines_count > bottom_line) && (size - scroll_bar_gripper_size - top_line_perc == 0)
        if top_line_perc > 0
            let top_line_perc = top_line_perc - 1
        else
            let scroll_bar_gripper_size = scroll_bar_gripper_size - 1
        endif
    endif

    " if (scroll_bar_gripper_size + top_line_perc > size)
    "     let scroll_bar_gripper_size = scroll_bar_gripper_size - 1
    " endif
    let scroll_bar = repeat(a:2, top_line_perc) . repeat(a:3, scroll_bar_gripper_size) . repeat(a:2, size - scroll_bar_gripper_size - top_line_perc)
    return scroll_bar
endfunction
