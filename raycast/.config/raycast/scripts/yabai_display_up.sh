#!/bin/zsh

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Yabai Display Up
# @raycast.mode silent

exec >/dev/null
exec 2>/dev/null

yabai -m window --swap north || $(
  yabai -m window --display north
  yabai -m display --focus recent
) 2>/dev/null
