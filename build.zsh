#!/usr/bin/env zsh
if ! ls factorio > /dev/null ; then
  artifact=factorio_headless_x64_1.1.109.tar.xz
  curl -svO https://dl.factorio.com/releases/1.1.109_01hzs7nc9tec7s81ct08s85emr/$artifact\?secure=rRVnkLSlPyCK2hNu7vFpUQ,1720903779
  tar xf $artifact
  rm $artifact
fi
