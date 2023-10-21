#!/usr/bin/osascript

# select the zoom app window
tell application "System Events" to tell process "zoom.us"
  # define a variable
  # check if the mic is muted
  set meetingMenu to menu 1 of menu bar item "Meeting" of menu bar 1
  if exists menu item "Mute Audio" of meetingMenu then
    return "false"
  else
    return "true"
  end if
end tell
