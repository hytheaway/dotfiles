#!/bin/zsh

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Yabai Display Down
# @raycast.mode silent

yabai -m window --swap south || $(
  yabai -m window --display south
  yabai -m display --focus south
)
