local gamespeed = require('gamespeed')

function apply_settings()
  game.speed = settings.global['game-speed'].value
end

script.on_init(apply_settings)

script.on_configuration_changed(function (data)
  apply_settings()
end)

script.on_event(defines.events.on_runtime_mod_setting_changed, function (event)
  apply_settings()
end)

script.on_event(defines.events.on_tick, function (event)
  for _, player in pairs(game.players) do
    local speed_control = player.gui.top.speed_control
    if speed_control == nil then
      speed_control = player.gui.top.add{
        type = 'frame',
        name = 'speed_control',
        direction = 'horizontal',
        style = 'speed_control'
      }
      speed_control.add{
        type = 'sprite-button',
        name = 'speed_down',
        tooltip = {'speed-down'},
        sprite = 'left_arrow_sprite',
        style = 'speed_down'
      }
      speed_control.add{
        type = 'label',
        name = 'speed_label',
        caption = ' ',
        style = 'speed_label'
      }
      speed_control.add{
        type = 'sprite-button',
        name = 'speed_up',
        tooltip = {'speed-up'},
        sprite = 'right_arrow_sprite',
        style = 'speed_up'
      }
    end
    speed_control.speed_label.caption = game.speed .. 'x'
  end
end)

script.on_event(defines.events.on_gui_click, function (event)
  if event.element.name == 'speed_up' then
    gamespeed.increase()
  elseif event.element.name == 'speed_down' then
    gamespeed.reduce()
  end
end)

script.on_event('game-speed-up', function (event)
  gamespeed.increase()
end)

script.on_event('game-speed-down', function (event)
  gamespeed.reduce()
end)
