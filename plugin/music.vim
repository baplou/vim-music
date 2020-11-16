function Song()
  execute "!~/.vim/plugged/vim-music/scripts/vim-music.py song"
  execute "!~/.vim/plugged/vim-music/scripts/vim-music.scpt"
endfunction

function Playlist()
  execute "!~/.vim/plugged/vim-music/scripts/vim-music.py playlist"
  execute "!~/.vim/plugged/vim-music/scripts/vim-music.scpt"
endfunction

function Stop()
  execute "!~/.vim/plugged/vim-music/scripts/vim-music.py stop"
  execute "!~/.vim/plugged/vim-music/scripts/vim-music.scpt"
endfunction

:command Playlist :call Playlist()
:command PlaySong :call Song()
:command Stop :call Stop()
