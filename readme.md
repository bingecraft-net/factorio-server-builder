# factorio-server-builder

This collection of scripts can build, sync, and start a vanilla or modded headless Factorio server nearly from scratch.

## prerequisites

### configuration

There are config files `factocord.js` `server-settings.json` that are tuned for the Nebula server constellation. Edit their values to make them your own.

### mods

Mods need to be manually added to the local mods directory before building the server directory. You can probably copy them from your client in `%Appdata%/Factorio/mods` `~/.factorio/mods` etc.

### secrets

The build script will create a template secrets file `./secrets.zsh` with empty DISCORD_TOKEN. You could follow these steps to populate the token before building the server directory:

1. navigate to https://discord.com/developers/applications
1. add Installation > Default Install Settings > Guild Install > Scopes "bot"
1. add Installation > Default Install Settings > Guild Install > Permissions "Connect"
1. enable Bot > Privileged Gateway Intents > Server Members Intent
1. copy Installation > Install Link to the browser url bar
1. add the bot to selected discord server
1. copy the token from `Bot > Reset Token` to `./secrets.zsh`

## build

Run `./build.zsh` to download dependencies and assemble the `./server` directory.

## start

Run `./start.zsh` to run the server using the `./server` directory.

## sync

Run `./sync.zsh <rsync-destination>/` to upload the `./start.zsh` script and `./server` directory to a remote directory.
