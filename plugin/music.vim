function Song(name)
  silent execute '!osascript -e ' . "'" . 'tell application "Music"' . "'" . " -e" . " '" . 'play track ' . '"'. a:name . '"' . "'" . " -e 'end tell'"
  :redraw!
  :echom "Vim Music Message: Playing Song " . a:name
endfunction

function Playlist(name)
  silent execute '!osascript -e ' . "'" . 'tell application "Music"' . "'" . " -e" . " '" . 'play the playlist named ' . '"'. a:name . '"' . "'" . " -e 'end tell'"
  :redraw!
  :echom "Vim Music Message: Playing Playlist " . a:name
endfunction

function Stop()
  silent execute '!osascript -e ' . "'" . 'tell application "Music"' . "'" . " -e" . " '" . 'pause' . "'" . " -e 'end tell'"
  :redraw!
  :echom "Vim Music Message: Stop Song"
endfunction

function Play()
  silent execute '!osascript -e ' . "'" . 'tell application "Music"' . "'" . " -e" . " '" . 'play' . "'" . " -e 'end tell'"
  :redraw!
  :echom "Vim Music Message: Play Song"
endfunction

function SpotifyPlay()
  silent execute '!osascript -e ' . "'" . 'tell application "Spotify"' . "'" . " -e" . " '" . 'play' . "'" . " -e 'end tell'"
  :redraw!
  :echom "Vim Music Message: Playing Song"
endfunction

function SpotifyStop()
  silent execute '!osascript -e ' . "'" . 'tell application "Spotify"' . "'" . " -e" . " '" . 'pause' . "'" . " -e 'end tell'"
  :redraw!
  :echom "Vim Music Message: Stop Song"
endfunction

function SpotifyQuit()
  silent execute '!osascript -e ' . "'" . 'tell application "Spotify"' . "'" . " -e" . " '" . 'quit' . "'" . " -e 'end tell'"
  :redraw!
  :echom "Vim Music Message: Spotify has quit"
endfunction

function Quit()
  silent execute '!osascript -e ' . "'" . 'tell application "Music"' . "'" . " -e" . " '" . 'quit' . "'" . " -e 'end tell'"
  :redraw!
  :echom "Vim Music Message: Music has quit"
endfunction

:command -nargs=* Playlist :call Playlist(<q-args>)
:command -nargs=* PlaySong :call Song(<q-args>)
:command Stop :call Stop()
:command Play :call Play()

:command SpotifyPlay :call SpotifyPlay()
:command SpotifyStop :call SpotifyStop()

:command SpotifyQuit :call SpotifyQuit()
:command MusicQuit :call Quit()
