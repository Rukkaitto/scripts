#!/bin/bash

pkill -f /dev/video0 || mpv --no-osc --no-input-default-bindings --input-conf=/dev/null --geometry=-0-0 --autofit=25% --title="mpvfloat" /dev/video0
