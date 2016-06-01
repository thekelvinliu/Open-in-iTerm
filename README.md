# Open-in-iTerm
a lightweight app that opens a Finder directory in iTerm

## Usage
![Example](http://i.imgur.com/29csGpq.gif)

Assuming you're using iTerm `3.0.0` or above (if not, see [below](#compatibility)), installing Open-in-iTerm is quick and easy.
Simply `git clone` this repository and command-drag `Open in iTerm.app` onto Finder's toolbar.
That's it.
Now, use Finder normally, and whenever you're in a directory you want open in iTerm, just click the icon!

## About
Open-in-iTerm is actually an AppleScript wrapped in an app.
The script that powers Open-in-iTerm was adapted from [various](http://peterdowns.com/posts/open-iterm-finder-service.html) [locations](https://gist.github.com/eric-hu/5846890).
In these implementations, the AppleScript is run by and Automator workflow, saved as an app.
Open-in-iTerm is different; the AppleScript used is saved as an app straight from Script Editor,
resuting in a considerably smaller app (from ~2.5MB to 146KB).

## Compatibility
iTerm2 recently released version `3.0.0`.
This introduced breaking changes to iTerm's AppleScript support.
As such, Open-in-iTerm was updated to work with the new iTerm and is only compatible with versions `3.0.0` and newer.
If for any reason you'd like to continue to use an earlier version of iTerm, switch to the `legacy` branch, and use that `Open in iTerm.app` instead.
