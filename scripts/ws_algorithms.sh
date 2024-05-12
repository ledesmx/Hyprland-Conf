#/bash/bin

hyprctl dispatch workspace name:algorithms
hyprctl dispatch exec kitty ~/Documents/the_prime_algorithms_course
sleep 1
hyprctl dispatch togglegroup
hyprctl dispatch exec code ~/Documents/the_prime_algorithms_course
sleep 1
hyprctl dispatch togglespecialworkspace docZ
hyprctl dispatch exec "brave-browser --new-window https://frontendmasters.com/courses/algorithms/"
