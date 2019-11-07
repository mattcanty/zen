#!/bin/sh

playlist='spotify:playlist:37i9dQZF1DWZeKCadgRdKQ'

# Play soothing music on Spotify
osascript -e '
log "Playing some soothing music on Spotify ..."
set volume output volume 5
tell application "Spotify"
  set shuffling to true
  set repeating to true
  play track "'$playlist'"
  set sound volume to 100
  log track
  set c to the current track
  log the "Spotify is playing " & name of c & " by " & artist of c as text
end tell'

# Close distracting applications
osascript -e '
log "Closing distracting applications ..."
quit app "Mail"
log "Finished closing distracting applications"'

# Close distracting websites
osascript -e '
log "Closing distracting websites ..."
set closeURLs to {"reddit", "bbc", "theguardian", "calendar.google.com"}
repeat with theURL in closeURLs
    tell application "Safari"
        close (every tab of every window whose name contains theURL)
    end tell
end repeat
log "Finished closing distracting websites ..."'
