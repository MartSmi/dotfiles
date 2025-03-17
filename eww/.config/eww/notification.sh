#!/usr/bin/env bash

case "$1" in
  "class")
    swaync-client -s | while read -r; do
      case "$(swaync-client -c)" in
        0) echo "";;
        *) echo "notification-attention";;
      esac
    done
    ;;
  "symbol")
    swaync-client -s | while read -r; do
      case "$(swaync-client -c)" in
        0) echo "󰂜";;
        *) echo "󰂚";;
      esac
    done
    ;;
esac
