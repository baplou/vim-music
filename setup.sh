#!/bin/bash

mkdir ~/.vim/music
touch ~/.vim/music/vim-music.scpt
touch ~/.vim/music/vim-music.py

echo '#!/usr/bin/env python3
import sys
from pathlib import Path

home_dir = str(Path.home())

if sys.argv[1] == "song":
  name = input("Enter the song name: ")

  lines = ["#!/usr/bin/env osascript\n",
           'tell application "Music"\n', 
           f'  play the track named "{name}"\n', 
           "end tell\n"]

  with open(f"{home_dir}/.vim/music/vim-music.scpt", "w") as v:
    v.writelines(lines)

elif sys.argv[1] == "playlist":
  name = input("Enter the playlist name: ")

  lines = ["#!/usr/bin/env osascript\n",
           'tell application "Music"\n', 
           f'  play the playlist named "{name}"\n', 
           "end tell\n"]

  with open(f"{home_dir}/.vim/music/vim-music.scpt", "w") as v:
    v.writelines(lines)

elif sys.argv[1] == "stop":
  lines = ["#!/usr/bin/env osascript\n",
           'tell application "Music"\n', 
           '  pause\n',
           "end tell\n"]

  with open(f"{home_dir}/.vim/music/vim-music.scpt", "w") as v:
    v.writelines(lines)' >> ~/.vim/music/vim-music.py

chmod +x ~/.vim/music/vim-music.scpt
chmod +x ~/.vim/music/vim-music.py

echo 'Vim Music setup was successful!'
