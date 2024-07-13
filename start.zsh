#!/usr/bin/env zsh

if ! ls saves > /dev/null ; then
  factorio/bin/x64/factorio --create saves/default.zip
fi

factorio/bin/x64/factorio --start-server saves/default.zip
