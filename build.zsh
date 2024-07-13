#!/usr/bin/env zsh
if ! ls factorio > /dev/null ; then
  artifact=factorio_headless_x64_1.1.109.tar.xz
  curl -svLo $artifact https://www.factorio.com/get-download/1.1.109/headless/linux64
  tar xf $artifact
  rm $artifact
fi
