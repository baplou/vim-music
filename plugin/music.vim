if exists("g:spotify")
  break
else
  let g:spotify = 0
endif

if g:spotify == 0
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

elseif g:spotify == 1
  function Song()
    silent execute "!~/.vim/plugged/vim-music/scripts/vim-music.py ssong"
    silent execute "!~/.vim/plugged/vim-music/scripts/vim-music.scpt"
    :redraw!
    :echom "Vim Music Message: Playing Song"
  endfunction

  function Playlist()
    silent execute "!~/.vim/plugged/vim-music/scripts/vim-music.py splaylist"
    silent execute "!~/.vim/plugged/vim-music/scripts/vim-music.scpt"
    :redraw!
    :echom "Vim Music Message: Running Playlist"
  endfunction

  function Stop()
    silent execute "!~/.vim/plugged/vim-music/scripts/vim-music.py sstop"
    silent execute "!~/.vim/plugged/vim-music/scripts/vim-music.scpt"
    :redraw!
    :echom "Vim Music Message: Stop Song"
  endfunction

else
  function Song()
    echo "Vim Music Message: Invalid option for global variable spotify, must be 1 or 0."
  endfunction

  function Playlist()
    echo "Vim Music Message: Invalid option for global variable spotify, must be 1 or 0."
  endfunction

  function Stop()
    echo "Vim Music Message: Invalid option for global variable spotify, must be 1 or 0."
  endfunction

endif

:command Playlist :call Playlist()
:command PlaySong :call Song()
:command Stop :call Stop()
