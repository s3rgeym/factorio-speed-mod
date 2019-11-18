local gamespeed = require('gamespeed')

data:extend({
  {
    type = 'double-setting',
    name = 'game-speed',
    setting_type = 'runtime-global',
    default_value = gamespeed.DEFAULT,
    allowed_values = gamespeed.MODIFIERS,
  }
})
