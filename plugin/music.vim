function Song()
  execute "!~/.vim/music/vim-music.py song"
  execute "!~/.vim/music/vim-music.scpt"
endfunction

function Playlist()
  execute "!~/.vim/music/vim-music.py playlist"
  execute "!~/.vim/music/vim-music.scpt"
endfunction

function Stop()
  execute "!~/.vim/music/vim-music.py stop"
  execute "!~/.vim/music/vim-music.scpt"
endfunction

:command Playlist :call Playlist()
:command PlaySong :call Song()
:command Stop :call Stop()
