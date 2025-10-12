#!/bin/sh

# PST/PDT timezone clock
sketchybar --set "$NAME" label="$(TZ='America/Los_Angeles' date '+%H:%M')"
