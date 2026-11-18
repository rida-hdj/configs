local wezterm = require 'wezterm'
local config = wezterm.config_builder()

config.font_size = 14
config.color_scheme = 'ayu'
-- config.window_background_opacity = 0.8
config.colors = {
    background = "#0b0e14",
  cursor_bg = "#59c2ff",
  cursor_fg = "#0b0e14",
  cursor_border = "#59c2ff",
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
