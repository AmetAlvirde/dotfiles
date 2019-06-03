## How to get 556 colors on emacs -nw within tmux and save hours googling stuff:

Based on: https://www.gnu.org/software/emacs/manual/html_mono/efaq.html#Colors-on-a-TTY 


1. create a terminfo file (at ~, I recommend)
      
$ vim terminfo-24bit.src

2. write the next magical lines and save it. Question your life and what tha
   hell does these lines mean:

xterm-24bit|xterm with 24-bit direct color mode,
  use=xterm-256color,
  setb24=\E[48:2:%p1%{65536}%/%d:%p1%{256}%/%{255}%&%d:%p1%{255}%&%dm,
  setf24=\E[38:2:%p1%{65536}%/%d:%p1%{256}%/%{255}%&%d:%p1%{255}%&%dm,
xterm-24bits|xterm with 24-bit direct color mode,
  use=xterm-256color,
  setb24=\E[48;2;%p1%{65536}%/%d;%p1%{256}%/%{255}%&%d;%p1%{255}%&%dm,
  setf24=\E[38;2;%p1%{65536}%/%d;%p1%{256}%/%{255}%&%d;%p1%{255}%&%dm,

3. IMPORTANT NOTE: last line of the file should be a newline or it wont work.

4. Run the next command on the directory where the file was created:

$ tic -x -o ~/.terminfo terminfo-24bit.src

run emacs with this special line, I recommend creating an alias for it.

$ TERM=xterm-24bit emacs -nw

5. Enjoy emacs with 556 colors. You can verify it worked by running within emacs:

M-x list-colors-display 

this should open a window with a 556 colors list.

That's it.

