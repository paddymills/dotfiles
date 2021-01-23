#!/usr/bin/env bash

# usage: start this script in anywhere your autostart (but *after* the
# emit_hook reload line)

hc() { "${herbstclient_command[@]:-herbstclient}" "$@" ;}
hc --idle '(focus_changed|reload)' \
	| while read line ; do
		IFS=$'\t' read -ra args <<< "$line"
		case ${args[0]} in
			focus_changed)
				case $( hc attr clients.focus.class ) in
					xfreerdp)
						polybar-msg cmd hide
						;;
					*)
						polybar-msg cmd show
						;;
				esac
				;;
			reload)
				polybar-msg cmd restart
				exit
				;;
		esac
	done
