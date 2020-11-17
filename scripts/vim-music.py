#!/usr/bin/env python3
import sys
from pathlib import Path

home_dir = str(Path.home())

if __name__ == "__main__":
  # Apple Music
  if sys.argv[1] == "song":
    name = input("Enter the song name: ")

    lines = ["#!/usr/bin/env osascript\n",
             'tell application "Music"\n', 
             f'  play the track named "{name}"\n', 
             "end tell\n"]

    with open(f"{home_dir}/.vim/plugged/vim-music/scripts/vim-music.scpt", "w") as v:
      v.writelines(lines)

  elif sys.argv[1] == "playlist":
    name = input("Enter the playlist name: ")

    lines = ["#!/usr/bin/env osascript\n",
             'tell application "Music"\n', 
             f'  play the playlist named "{name}"\n', 
             "end tell\n"]

    with open(f"{home_dir}/.vim/plugged/vim-music/scripts/vim-music.scpt", "w") as v:
      v.writelines(lines)

  elif sys.argv[1] == "stop":
    lines = ["#!/usr/bin/env osascript\n",
             'tell application "Music"\n', 
             '  pause\n',
             "end tell\n"]

    with open(f"{home_dir}/.vim/plugged/vim-music/scripts/vim-music.scpt", "w") as v:
      v.writelines(lines)

  elif sys.argv[1] == "play":
    lines = ["#!/usr/bin/env osascript\n",
             'tell application "Music"\n', 
             '  play the track\n',
             "end tell\n"]

    with open(f"{home_dir}/.vim/plugged/vim-music/scripts/vim-music.scpt", "w") as v:
      v.writelines(lines)

  # Spotify
  elif sys.argv[1] == "splay":
    lines = ["#!/usr/bin/env osascript\n",
             'tell application "Spotify"\n', 
             f'  play the track', 
             "end tell\n"]

    with open(f"{home_dir}/.vim/plugged/vim-music/scripts/vim-music.scpt", "w") as v:
      v.writelines(lines)

  elif sys.argv[1] == "sstop":
    lines = ["#!/usr/bin/env osascript\n",
             'tell application "Spotify"\n', 
             '  pause\n',
             "end tell\n"]

    with open(f"{home_dir}/.vim/plugged/vim-music/scripts/vim-music.scpt", "w") as v:
      v.writelines(lines)
