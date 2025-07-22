#!/bin/zsh

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Yabai Display Right
# @raycast.mode silent

yabai -m window --swap east || $(
  yabai -m window --display east
  yabai -m display --focus east
)
