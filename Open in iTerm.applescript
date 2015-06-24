tell application "Finder"
    set dir_path to quoted form of (POSIX path of (folder of the front window as alias))
end tell
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
        write text "cd " & dir_path & ";clear;"
    end tell
end tell
