console.log(JSON.stringify({
  // Path to factorio server
  executable: "./bin/x64/factorio",
  launch_parameters: [
    "--start-server-load-latest",
    "saves/default.zip",
    "--server-settings",
    "data/server-settings.json",
  ],
  // start factorio when factocord starts
  autolaunch: true,

  // Token of the discord bot
  discord_token: process.env.DISCORD_TOKEN,
  // Name of the game the bot will be "playing".
  game_name: "Factorio",
  // Id of the channel that will be synchronized with in-game chat
  factorio_channel_id: "1269732567033319627",
  // Prefix used to send commands to the bot (e.g. $help)
  prefix: "$",
  // Whether the scenario that will send custom messages from the game is enabled
  have_server_essentials: false,
  // Color usernames of the discord users in factorio chat
  ingame_discord_user_colors: false,

  allow_pinging_everyone: false,

  // Send all console output to that channel
  enable_console_channel: true,
  factorio_console_chat_id: "1269733911752212494",

  // IDs of the discord users that are allowed to execute any command
  admin_ids: [
    "137032629844312065"
  ],
  // IDs of discord roles that are allowed to execute certain commands.
  // command names should be lowercase
  command_roles: {
    // "mod": "123456789",
    // "server": "123456789"
    // "save": "123456789",
    // "config": "123456789",
    // those who have a role with id '123456789' can execute mod, server, save, and config commands

    // "kick": "987654321",
    // "ban": "987654321",
    // "unban": "987654321",
  },

  // Path to 'mod-list.json'
  mod_list_location: "./mods/mod-list.json",

  // Your username and token to download mods from mod portal
  // You can get those at https://factorio.com/profile
  username: "",
  mod_portal_token: "",

  // messages for certain events.  set "" to hide that message
  messages: {
    bot_start: "**:white_check_mark: Bot started! Launching server...**",
    bot_stop: ":v:",
    server_start: "**:white_check_mark: The server has started!**",
    server_stop: "**:octagonal_sign: The server has stopped!**",
    server_fail: "**:skull: The server has crashed!**",
    server_save: "**:floppy_disk: Game saved!**",
    player_join: "**:arrow_up: {username}**",
    player_leave: "**:arrow_down: {username}s**",
    download_start: ":arrow_down: Downloading {file}...",
    download_progress: ":arrow_down: Downloading {file}: {percent}%",
    download_complete: ":white_check_mark: Downloaded {file}",
    unpacking: ":pinching_hand: Unpacking {file}...",
    unpacking_complete: ":ok_hand: Server updated to {version}",
  }
}))
