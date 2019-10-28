#!/bin/sh

playlist='spotify:playlist:37i9dQZF1DX4sWSpwq3LiO'

osascript -e '
set volume output volume 5
tell application "Spotify"
  activate
  set shuffling to true
  set repeating to true
  play track "'$playlist'"
  set sound volume to 100
end tell
quit app "Mail"'
