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
    tell current session of first window
      write text cd_cmd
    end tell
  on error
    create window with profile "Default" command cd_cmd
  end try
end tell
