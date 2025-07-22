#!/bin/zsh

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Yabai Display Up
# @raycast.mode silent

yabai -m window --swap north || $(
  yabai -m window --display north
  yabai -m display --focus north
)
