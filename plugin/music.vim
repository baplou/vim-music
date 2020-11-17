function Song()
  silent execute "!~/.vim/plugged/vim-music/scripts/vim-music.py song"
  silent execute "!~/.vim/plugged/vim-music/scripts/vim-music.scpt"
  :redraw!
  :echom "Vim Music Message: Playing Song"
endfunction

function Playlist()
  silent execute "!~/.vim/plugged/vim-music/scripts/vim-music.py playlist"
  silent execute "!~/.vim/plugged/vim-music/scripts/vim-music.scpt"
  :redraw!
  :echom "Vim Music Message: Running Playlist"
endfunction

function Stop()
  silent execute "!~/.vim/plugged/vim-music/scripts/vim-music.py stop"
  silent execute "!~/.vim/plugged/vim-music/scripts/vim-music.scpt"
  :redraw!
  :echom "Vim Music Message: Stop Song"
endfunction

function Play()
  silent execute "!~/.vim/plugged/vim-music/scripts/vim-music.py play"
  silent execute "!~/.vim/plugged/vim-music/scripts/vim-music.scpt"
  :redraw!
  :echom "Vim Music Message: Stop Song"
endfunction

function SpotifyPlay()
  silent execute "!~/.vim/plugged/vim-music/scripts/vim-music.py splay"
  silent execute "!~/.vim/plugged/vim-music/scripts/vim-music.scpt"
  :redraw!
  :echom "Vim Music Message: Playing Song"
endfunction

function SpotifyStop()
  silent execute "!~/.vim/plugged/vim-music/scripts/vim-music.py sstop"
  silent execute "!~/.vim/plugged/vim-music/scripts/vim-music.scpt"
  :redraw!
  :echom "Vim Music Message: Stop Song"
endfunction

:command Playlist :call Playlist()
:command PlaySong :call Song()
:command Stop :call Stop()
:command Play :call Play()

:command SpotifyPlay:call SpotifyPlay()
:command SpotifyStop :call SpotifyStop()
