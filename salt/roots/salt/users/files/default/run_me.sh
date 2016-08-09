#!/bin/bash

nvim +PlugInstall +qall
cd ~/.config/nvim/Plugged/YCM
./install.py --clang-completer --tern-completer