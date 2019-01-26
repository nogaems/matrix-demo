#!/bin/bash
tmux new-session -d -s demo
tmux rename-window 'Matrix'
tmux select-window -t demo:0
tmux send-keys -t 0 'weechat' 'Enter'
tmux split-window -v -t demo:0 -p 20 'less howto'
tmux select-pane -t 0.0
while ! pidof weechat > /dev/null ; do sleep 0.25 ; done
echo "Loading..."
sleep 3
cat ./commands > ~/.weechat/weechat_fifo
tmux -2 attach-session -t demo
