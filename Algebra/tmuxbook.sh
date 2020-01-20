


#!/bin/bash

session="book"
window1="console"
window2="script"
tmux new-session -s $session -d
tmux rename-window $window1
tmux new-window -n $window2

tmux split-window -t $window2

tmux send-keys -t $window2.1  "clear" C-m
tmux send-keys -t $window2.2 "clear" C-m
tmux send-keys -t console "tmux kill-session -t "
tmux select-pane -t $window2.1 

tmux attach -t $session 
