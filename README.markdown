# Noscrollbar

![Noscrollbar demo](https://gcavallanti.github.io/vim-noscrollbar/noscrollbar.gif)

Noscrollbar is a scrollbar-like widget for the vim statusline that
provides a visual feedback of what part of a buffer is currently shown on
screen.

The "no" in noscrollbar refers to the fact that the gripper cannot be
really gripped and dragged, i.e., the scrollbar cannot be used to scroll the
window with the mouse.  

## Installation

I recommend installing [pathogen.vim](https://github.com/tpope/vim-pathogen), and
then simply copy and paste:

    cd ~/.vim/bundle
    git clone https://github.com/gcavallanti/vim-noscrollbar.git

Once help tags have been generated, you can view the manual with
`:help noscrollbar`.

### How to use

Simply add `%{noscrollbar#statusline()}` to the `statusline` option and you are
done. Example:

    set statusline=%<%f\ %h%m%r%=%-14.(%l,%c%V%)\ %{noscrollbar#statusline()}

The default behavior returns a string of length 20 where the dash character '-'
is used to render the track of the scrollbar and the hash character '#' is used
to render the gripper.  The scrollbar look can be customized by passing the
length, the track character and the gripper character. For example the default
look is set by calling `%{noscrollbar#statusline(20,'-','#')}`.

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
