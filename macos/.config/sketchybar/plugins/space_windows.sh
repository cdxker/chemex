#!/bin/bash

if [ "$SENDER" = "aerospace_monitor_change" ]; then
  sketchybar --set space."$FOCUSED_WORKSPACE" display="$TARGET_MONITOR"
  exit 0
fi

if [ "$SENDER" = "aerospace_workspace_change" ]; then
  prevapps=$(aerospace list-windows --workspace "$PREV_WORKSPACE" | awk -F'|' '{gsub(/^ *| *$/, "", $2); print $2}')
  if [ "${prevapps}" != "" ]; then
    icon_strip="*"
  else
    icon_strip=""
  fi
  sketchybar --set space.$PREV_WORKSPACE label="$icon_strip"
else
  FOCUSED_WORKSPACE="$(aerospace list-workspaces --focused)"
fi

apps=$(aerospace list-windows --workspace "$FOCUSED_WORKSPACE" | awk -F'|' '{gsub(/^ *| *$/, "", $2); print $2}')
sketchybar --set space.$FOCUSED_WORKSPACE drawing=on
icon_strip=" "
if [ "${apps}" != "" ]; then
  icon_strip="*"
else
  icon_strip=""
fi
sketchybar --set space.$FOCUSED_WORKSPACE label="$icon_strip"
