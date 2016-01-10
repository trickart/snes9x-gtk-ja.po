#!/bin/bash
#put this script on snes9x/gtk/po

xgettext --keyword=_ $(echo $(cat POTFILES.in) | sed -e 's/src/..\/src/g' | tr '\n' ' ') -o snes9x-gtk.pot
