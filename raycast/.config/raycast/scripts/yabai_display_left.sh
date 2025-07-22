#!/bin/zsh

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Yabai Display Left
# @raycast.mode silent

exec >/dev/null
exec 2>/dev/null

yabai -m window --swap west || $(
  yabai -m window --display west
  yabai -m display --focus recent
) 2>/dev/null
