#!/usr/bin/env osascript

-- get path to directory to be opened
tell application "Finder"
  set dir_path to quoted form of (POSIX path of (folder of the front window as alias))
end tell
-- command to be executed
set cd_cmd to "cd " & dir_path & "; clear;"
-- open in iterm
tell application "iTerm"
  activate
  try
    set _session to current session of current terminal
  on error
    set _term to (make new terminal)
    tell _term
      launch session "Default"
      set _session to current session
    end tell
  end try
  tell _session
    write text cd_cmd
  end tell
end tell
