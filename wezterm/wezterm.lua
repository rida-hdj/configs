local wezterm = require 'wezterm'
local config = wezterm.config_builder()

config.font_size = 14
config.color_scheme = 'catppuccin-mocha'
-- config.window_background_opacity = 0.8
config.colors = {
  cursor_bg = '#cba6f7',
  cursor_fg = '#1e1e2e',
  cursor_border = '#cba6f7',
}
config.font = wezterm.font("JetBrainsMono Nerd Font", { weight = 'Bold' })
config.enable_tab_bar = false
config.adjust_window_size_when_changing_font_size = false
config.window_padding = {
    left = 8,
    right = 8,
    top = 8,
    bottom = 8,
}

return config
