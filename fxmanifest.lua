fx_version 'cerulean'
game 'gta5'
lua54 'yes'

name 'tdev_kayak2'
author 'Tdev'
description 'Kayak activity'
version '1.0.3'

shared_scripts {
  'config.lua',
  'shared/utils.lua'
}

client_scripts {
  'client/main.lua'
}

server_scripts {
  'server/protection.lua',
  'server/main.lua'
}

files {
  'stream/p_banknote_s.ydr'
}

dependencies {
  '/onesync'
}

escrow_ignore {
  'config.lua',
  'shared/utils.lua',
  'client/main.lua',
  'server/main.lua',
  'install/*.lua',
  'install/*.sql',
  'README.md',
  'stream/*.ydr'
}
