# Custom command
cppide() {
  tmux new-session \; split-window -h \; split-window -v \; resize-pane -R 27 \; source-file ~/.config/tmux/.tmux.conf \; 
}

flutteride() {
  tmux new \; new-window \; source-file ~/.config/tmux/.tmux.conf \;
}

cpp() {
  g++ "$1" && ./a.out
}

class() {
  tmux new-window;
  tmux split-window -h nvim "$1".h;
  tmux select-pane -L \; attach nvim "$1".cpp;
}

