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

Examples:
---------------
<p>
  <img src="https://www.github.com/baplou/vim-music/blob/master/markup/play.gif?raw=true"></img>
</p>

<p>
  <img src="https://www.github.com/baplou/vim-music/blob/master/markup/playlist.gif?raw=true"></img>
</p>


TODO
----
* add docs
* add Spotify support
* add Vundle support (for noobs)
* add aliases for Songs and Playlists
* add nice gif to readme :)
