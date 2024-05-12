#/bash/bin

hyprctl dispatch workspace name:go
hyprctl dispatch exec code ~/Documents/learn_go
sleep 1
hyprctl dispatch exec "brave-browser --new-window https://www.youtube.com/watch?v=un6ZyFkqFKo"
sleep 1
hyprctl dispatch exec kitty ~/Documents/learn_go
