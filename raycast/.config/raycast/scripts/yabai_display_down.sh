#!/bin/zsh

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Yabai Display Down
# @raycast.mode silent

exec >/dev/null
exec 2>/dev/null

yabai -m window --swap south || $(
  yabai -m window --display south
  yabai -m display --focus recent
) 2>/dev/null
