#!/usr/bin/env bash
#
# Launch a power menu
#
# Requirement: fzf
#
# Author:  Jesse Mirabel <sejjymvm@gmail.com>
# Date:    August 19, 2025
# License: MIT

# shellcheck disable=SC1090
colors=()
source ~/.config/waybar/scripts/fzf-theme.sh &>/dev/null || true

main() {
  local list=(
    "Lock"
    "Shutdown"
    "Reboot"
    "Logout"
    "Hibernate"
    "Suspend"
  )
  local opts=(
    "--border=sharp"
    "--border-label= Power Menu "
    "--height=~100%"
    "--highlight-line"
    "--no-input"
    "--pointer="
    "--reverse"
    "${colors[@]}"
  )

  local selected
  selected=$(printf "%s\n" "${list[@]}" | fzf "${opts[@]}")

  case $selected in
  "Lock")
    loginctl lock-session
    exit 1
    ;;
  "Shutdown")
    systemctl poweroff
    exit 1
    ;;
  "Reboot")
    systemctl reboot
    exit 1
    ;;
  "Logout")
    loginctl terminate-session "$XDG_SESSION_ID"
    exit 1
    ;;
  "Hibernate")
    systemctl hibernate
    exit 1
    ;;
  "Suspend")
    systemctl suspend
    exit 1
    ;;
  *) exit 1 ;;
  esac

  while true; do
    read -rsn1 input
    if [ "$input" = "escape" ]; then
      exit
    fi
  done

}

main
