# Vim Music
What is it? Vim Music is a plugin for vim that makes it possible to play and stop music directly from vim.
Only works on MacOS. This is because the plugin takes a command and writes it out as applescript. This also
only works if you have your music in the music app on Mac and you use [Vim Plug](https://github.com/junegunn/vim-plug). Note: You do not need to have the music app open, it will automatically open when playing music.

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

note: Vundle and Vim8 installation support will be added soon.

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
:command PlaySong :call Song()
:command Playlist :call Playlist()
:command Stop :call Stop()
:command Play :call Play()
```

When using :PlaySong, you will exit vim, and there will be a prompt asking you for the song name.
You must give the exact name of the song, or it will not work. In the future you will be able to 
make aliases for song names.

When using :Playlist, you will exit vim, and there will be a prompt asking you for the playlist name.
You must give the exact name of the playlist, or it will not work. In the future you will be able to 
make aliases for playlist names. Note: This will automatically shuffle the playlist.

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
* add Vundle support (for noobs)
* add aliases for Songs and Playlists
* add nice gif to readme :)
