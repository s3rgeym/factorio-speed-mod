local default_gui = data.raw['gui-style'].default

default_gui['speed_control'] = {
  type = 'frame_style',
  parent = 'frame',
}

default_gui['speed_down'] = {
  type = 'button_style',
  parent = 'button',
  width = 32
}

default_gui['speed_label'] = {
  type = 'label_style',
  parent = 'label',
  horizontal_align = 'center',
  width = 50
}

default_gui['speed_up'] = {
  type = 'button_style',
  parent = 'button',
  width = 32
}

data:extend({
  {
    type = 'sprite',
    name = 'left_arrow_sprite',
    priority = "extra-high-no-scale",
    width = 32,
    height = 32,
    filename = '__speed_mod__/assets/icons/left_arrow.png'
  },
  {
    type = 'sprite',
    name = 'right_arrow_sprite',
    priority = "extra-high-no-scale",
    width = 32,
    height = 32,
    filename = '__speed_mod__/assets/icons/right_arrow.png'
  }
})
