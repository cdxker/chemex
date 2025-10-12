#!/bin/sh

# CEST/CET timezone clock
sketchybar --set "$NAME" label="$(TZ='Europe/Paris' date '+%H:%M')"
