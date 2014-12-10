# Noscrollbar: a scrollbar-like widget for vim 

Noscrollbar is a scrollbar-like widget for the vim statusline that
provides a visual feedback of what part of a buffer is currently shown on
screen. 

![Noscrollbar demo](https://gcavallanti.github.io/vim-noscrollbar/noscrollbar.gif)

The "no" in noscrollbar refers to the fact that the gripper cannot be
really gripped and dragged, i.e., the scrollbar cannot be used to scroll the
window with the mouse.  

## Installation

I recommend installing [pathogen.vim](https://github.com/tpope/vim-pathogen), and
then simply copy and paste:

    cd ~/.vim/bundle
    git clone git://github.com/gcavallanti/noscrollbar.git

Once help tags have been generated, you can view the manual with
`:help noscrollbar`.

### How to use

Simply add `%{noscrollbar#statusline()}` to the `statusline` option and you are done.  The
default behavior returns a string of length 20 where the dash character '-' is
used to render the track of the scrollbar and the pipe character ':' is used to
render the gripper.  The scrollbar look can be customized by passing the length,
the track character and the gripper character. For example the default look is
set by calling `%{noscrollbar#statusline(20,'-',':'}`.

### High resolution mode

NoscrollBar comes with an high resolution mode.  Check `:help noscrollbar`
for details. 

## Self-Promotion

Like noscrollbar? Follow and/or star the
[repository](https://github.com/gcavallanti/vim-noscrollbar). You might also want to follow 
me on [GitHub](https://github.com/gcavallanti).

## License

Copyright (c) Giovanni Cavallanti.  Distributed under the same terms as Vim itself.
See `:help license`.
