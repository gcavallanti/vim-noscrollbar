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
        let scrollbar_size = str2nr(a:1)
    else
        let scrollbar_size = 10
    endif

    " gripper positions are 0 based (0..scrollbar_size-1)
    let gripper_start_pos = float2nr((top_line - 1.0) / lines_count * scrollbar_size)
    let gripper_size = float2nr(ceil((bottom_line - top_line + 1.0)/ lines_count * scrollbar_size)) 
    if (top_line > 1) && (gripper_start_pos == 0)
        " users expect to see the scrollbar in the leftmost position only if we
        " are at the very top of the buffer
        let gripper_start_pos = 1
        if (gripper_start_pos + gripper_size >= scrollbar_size)
        " if (gripper_size + gripper_start_pos > scrollbar_size)
            let gripper_size = gripper_size - 1
        endif
    endif

    let gripper_end_pos = gripper_start_pos + gripper_size
    if (bottom_line < lines_count) && (gripper_end_pos == scrollbar_size)
        " if the last line is not on screen but the scrollbar seems to indicate
        " so then either change the scrollbar position or its size
        if gripper_start_pos > 0
            let gripper_start_pos = gripper_start_pos - 1
        else
            let gripper_size = gripper_size - 1
        endif
    endif

    let scroll_bar = repeat(a:2, gripper_start_pos) . repeat(a:3, gripper_size) . repeat(a:2, scrollbar_size - gripper_end_pos)
    return scroll_bar
endfunction
