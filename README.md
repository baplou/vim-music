# Vim Music
What is it? Vim Music is a plugin for vim that makes it possible to play and stop music directly from vim.
Only works on MacOS. This is because the plugin takes a command and writes it out as applescript.
The plugin plays music from the music app on mac. For playing specific playlists and songs in Spotify,
you can't do it yet. It will be added later. Note: You do not need to have the music app on Mac
open. The plugin will automatically open it.

## Requirements
* Python 3.6 or above
* sys (pip package)
* pathlib (pip package)
* applescript (comes with most modern Macs)

## Installation
Vim Plug

First add this to your vimrc:
```
call plug#begin('~/.vim/plugged')
Plug 'baplou/vim-music'
call plug#end()
```

Then run:
```
:PlugInstall
```

## How to use?
There are four commands:
```
:PlaySong
:Playlist
:Stop
:Play
```

Each one of those commands calls their respective function.
```vim
:command -nargs=* Playlist :call Playlist(<q-args>)
:command -nargs=* PlaySong :call Song(<q-args>)
:command Stop :call Stop()
:command Play :call Play()
```

When using :PlaySong, as an argument you give it the song name. Like this:
```
:PlaySong Bohemian Rhapsody
```

When using :Playlist, as an argument you give it the playlist name. Like this:
```
:Playlist Playlist Name
```

note: If you don't give :PlaySong or :Playlist an argument, the program will throw
an applescript error, so please don't do it.

When using :Stop, you will exit vim for a second and then the song will stop playing.
When using :Play, you will exit vim for a second and then the current song will start playing.

## Spotify Support
Spotify Support right now only works for playing the current track and stopping the 
current track. This is done like this:
```
:SpotifyStop
:SpotifyPlay
```

You can't choose a song or choose a playlist. This is because in order to do so
you need to know the track id of the song or playlist. In the future you will be able to
choose a song or a playlist by working with the Spotify API to find out the id. This will
be in a separate branch.

TODO
----
* add docs
* add aliases for Songs and Playlists
