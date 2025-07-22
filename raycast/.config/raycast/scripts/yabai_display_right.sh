#!/bin/zsh

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Yabai Display Right
# @raycast.mode silent

exec >/dev/null
exec 2>/dev/null

yabai -m window --swap east || $(
  yabai -m window --display east
  yabai -m display --focus recent
) 2>/dev/null
