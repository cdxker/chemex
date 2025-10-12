#!/bin/sh

# UTC timezone clock
sketchybar --set "$NAME" label="$(TZ='UTC' date '+%H:%M')"
