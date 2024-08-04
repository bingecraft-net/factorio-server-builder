#!/usr/bin/env zsh
if ! ls factorio-template > /dev/null ; then
  artifact=factorio_headless_x64_1.1.109.tar.xz
  curl -sLo $artifact https://www.factorio.com/get-download/1.1.109/headless/linux64
  tar xf $artifact
  rm $artifact
  mv factorio factorio-template
fi

if ! ls FactoCord3 > /dev/null ; then
  curl -sLO https://github.com/maxsupermanhd/FactoCord-3.0/releases/download/v3.2.19/FactoCord3
  chmod +x FactoCord3
fi

if ls server > /dev/null 2>&1 ; then
  echo server dir already exists
  echo skipping server dir build
else
  if ! ls secrets.zsh > /dev/null 2>&1 ; then
    echo export DISCORD_TOKEN= > secrets.zsh
  fi

  source secrets.zsh

  if [[ -z "$DISCORD_TOKEN" ]] ; then
    echo missing DISCORD_TOKEN in secrets.zsh
    exit 1
  fi

  cp -r factorio-template server
  cp -r mods/ server/mods/

  mkdir server/saves
  server/bin/x64/factorio --create server/saves/default.zip

  cp FactoCord3 server
  node factocord.js > server/config.json
fi
