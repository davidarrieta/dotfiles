#!/bin/bash
#
# Filename: mpc_toggle
# Desc: Uses mpc to toggle mpd between play & pause states. (Used with i3 key binding)
# Date: 2013.04.14
#

state=$(mpc | grep playing| wc -l)

# 0 is stopped
# 1 is playing

if [[ $state = 1 ]]; then
	mpc pause >> /dev/null
else
	mpc play >> /dev/null
fi
exit 0
