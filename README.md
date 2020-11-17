# Vim Music

What is it? Vim Music is a plugin for vim that makes it possible to play and stop music directly from vim.
Only works on MacOS. This is because the plugin takes a command and writes it out as applescript. This also
only works if you have your music in the music app on Mac and you use [Vim Plug](https://github.com/junegunn/vim-plug). Note: You do not need to have the music app open, it will automaticlly open when playing music.

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

note: Vundle and Vim Plug installation support will be added soon.

## How to use?
There are three commands:
```
:PlaySong
:Playlist
:Stop
```

Each one of those commands calls their respective function.
```vim
:command PlaySong :call Song()
:command Playlist :call Playlist()
:command Stop :call Stop()
```

When using :PlaySong, you will exit vim, and there will be a prompt asking you for the song name.
You must give the exact name of the song, or it will not work. In the future you will be able to 
make aliases for song names.

When using :Playlist, you will exit vim, and there will be a prompt asking you for the playlist name.
You must give the exact name of the playlist, or it will not work. In the future you will be able to 
make aliases for playlist names. Note: This will automatically shuffle the playlist.

When using :Stop, you will exit vim for a second and then the song will stop playing.

TODO
----
* add docs
* add Spotify support
* add Vundle support (for noobs)
* add aliases for Songs and Playlists
