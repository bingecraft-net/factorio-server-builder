#!/usr/bin/env zsh

if [[ -z "$1" ]] ; then
  echo usage: $0 "<rsync-destination>/"
  exit 1
fi

rsync -avr \
  --progress \
  --include 'server/***' \
  --include start.zsh \
  --exclude '*' \
  ./ $1
