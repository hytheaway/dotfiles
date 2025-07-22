#!/bin/zsh

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Yabai Display Left
# @raycast.mode silent

yabai -m window --swap west || $(
  yabai -m window --display west
  yabai -m display --focus west
)
