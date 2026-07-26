#!/bin/bash

get_brightness_int() {
    brightness_current=$(brightnessctl --class=backlight get)
    brightness_max=$(brightnessctl --class=backlight max)
    brightness_int=$(awk "BEGIN {printf \"%.0f\", ($brightness_current / $brightness_max) * 100}")
    echo $brightness_int
}

notify_brightness() {
    brightness=$(get_brightness_int)
    echo $brightness > $XDG_RUNTIME_DIR/wob.sock
}

raise_brightness() {
    brightnessctl --class=backlight set +10%
    notify_brightness
}

lower_brightness() {
    brightnessctl --class=backlight set 10%-
    notify_brightness
}
