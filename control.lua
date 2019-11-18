local gamespeed = require('gamespeed')

function applyGlobalSettings()
  game.speed = settings.global['game-speed'].value
end

script.on_init(applyGlobalSettings)

script.on_configuration_changed(function (data)
  applyGlobalSettings()
end)

script.on_event(defines.events.on_runtime_mod_setting_changed, function (event)
  applyGlobalSettings()
end)

script.on_event('increase-game-speed', function (event)
  game.speed = gamespeed.next(game.speed)
  game.print({'game-speed-changed', game.speed})
end)

script.on_event('decrease-game-speed', function (event)
  game.speed = gamespeed.prev(game.speed)
  game.print({'game-speed-changed', game.speed})
end)
