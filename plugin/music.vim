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

  function SpotifySong()
    silent execute "!~/.vim/plugged/vim-music/scripts/vim-music.py ssong"
    silent execute "!~/.vim/plugged/vim-music/scripts/vim-music.scpt"
    :redraw!
    :echom "Vim Music Message: Playing Song"
  endfunction

  function SpotifyPlaylist()
    silent execute "!~/.vim/plugged/vim-music/scripts/vim-music.py splaylist"
    silent execute "!~/.vim/plugged/vim-music/scripts/vim-music.scpt"
    :redraw!
    :echom "Vim Music Message: Running Playlist"
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
:command SpotifyPlaylist :call SpotifyPlaylist()
:command SpotifyPlaySong :call SpotifySong()
:command SpotifyStop :call SpotifyStop()
