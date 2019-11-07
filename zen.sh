#!/bin/sh

playlist='spotify:playlist:37i9dQZF1DWZeKCadgRdKQ'

osascript -e '
set volume output volume 5
tell application "Spotify"
  activate
  set shuffling to true
  set repeating to true
  play track "'$playlist'"
  set sound volume to 100
end tell
quit app "Mail"
tell application "System Events" to click (first button of (every window of (application process "Spotify")) whose role description is "minimize button")
set closeURLs to {"reddit", "bbc", "theguardian"}
repeat with theURL in closeURLs
    tell application "Safari"
        close (every tab of every window whose name contains theURL)
    end tell
end repeat'
