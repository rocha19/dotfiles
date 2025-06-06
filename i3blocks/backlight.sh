#!/usr/bin/env bash

# Show the screen brightness value given by `xbacklight`.
# Clicking uses `xset` to turn off the backlight, scrolling increases or decreases
# the brightness.

# Copyright 2019 Johannes Lange
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.

STEP_SIZE=${STEP_SIZE:-5}
USE_SUDO=${USE_SUDO:-0}

# whether to use `sudo` for changing the brightness (requires a NOPASSWD rule)
if [[ "$USE_SUDO" == "0" ]]; then
  XBACKLIGHT_SET="xbacklight"
else
  XBACKLIGHT_SET="sudo xbacklight"
fi

case $BLOCK_BUTTON in
3) xset dpms force off ;;               # right click
4) $XBACKLIGHT_SET -inc "$STEP_SIZE" ;; # scroll up
5) $XBACKLIGHT_SET -dec "$STEP_SIZE" ;; # scroll down, decrease
esac

BRIGHTNESS=$(xbacklight -get | cut -f1 -d'.')
echo "${BRIGHTNESS}%"
