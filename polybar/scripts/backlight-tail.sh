#!/bin/sh

#sink=0
step=5

brigther() {
    xbacklight -inc $step
}

darker() {
    xbacklight -dec $step
}

volume_print() {
    if pacmd list-sinks | grep active | head -n 1 | grep -q speaker; then
        icon=""
    elif pacmd list-sinks | grep active | head -n 1 | grep -q headphones; then
        icon=""
    else
        icon=""
    fi

    muted=$(pamixer --sink $sink --get-mute)

    if [ "$muted" = true ]; then
        echo "ﱝ"
    else
        echo "$icon $(pamixer --sink $sink --get-volume)%"
    fi
}

listen() {
    volume_print

    pactl subscribe | while read -r event; do
        if echo "$event" | grep -q "#$sink"; then
            volume_print
        fi
    done
}

case "$1" in
    --up)
        brigther
        ;;
    --down)
        darker
        ;;
    *)
        listen
        ;;
esac
