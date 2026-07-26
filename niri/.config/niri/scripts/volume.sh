#!/bin/bash

get_volume_int() {
    # get-volume returns "Volume: 0.65" so grab decimal and multiply
    volume_int=$(wpctl get-volume @DEFAULT_AUDIO_SINK@ | awk '{print $2 * 100}')
    echo $volume_int
}

notify_volume() {
    volume=$(get_volume_int)
    echo $volume > $XDG_RUNTIME_DIR/wob.sock
}

unmute_maybe() {
    is_muted=$(wpctl get-volume @DEFAULT_AUDIO_SINK@ | grep -q MUTED)
    if $is_muted; then
        wpctl set-mute @DEFAULT_AUDIO_SINK@ 0
    fi
}

raise_volume() {
    unmute_maybe
    wpctl set-volume @DEFAULT_AUDIO_SINK@ 0.1+ -l 1.0
    notify_volume
}

lower_volume() {
    unmute_maybe
    wpctl set-volume @DEFAULT_AUDIO_SINK@ 0.1-
    notify_volume
}
