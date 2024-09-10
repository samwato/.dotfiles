local wezterm = require 'wezterm'
local config = wezterm.config_builder()

config.font_size = 13.0
config.line_height = 1.2
config.font = wezterm.font 'JetBrains Mono'
config.color_scheme = 'JetBrains Dark'
config.color_schemes = {
  ['JetBrains Dark'] = {
    foreground = '#bcbec4',
    background = '#1e1f22',
    cursor_bg = '#ffffff',
    cursor_border = '#ffffff',
    cursor_fg = '#000000',
    selection_bg = '#1a3272',
    selection_fg = '#adadad',
    ansi = {
      '#000000',
      '#DE5D56',
      '#69953D',
      '#A18B2F',
      '#5391CF',
      '#9F73BA',
      '#48A0A2',
      '#808080'
    },
    brights = {
      '#000000',
      '#DE5D56',
      '#69953D',
      '#A18B2F',
      '#5391CF',
      '#9F73BA',
      '#48A0A2',
      '#808080'
    }
  }
}

return config
