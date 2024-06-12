-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This table will hold the configuration.
local config = {}

-- In newer versions of wezterm, use the config_builder which will
-- help provide clearer error messages
if wezterm.config_builder then
  config = wezterm.config_builder()
end

-- This is where you actually apply your config choices

-- colors
config.color_scheme = "Afterglow"
config.window_background_opacity = 1.00
-- font
config.font = wezterm.font("Hack Nerd Font", {weight="Regular", stretch="Normal", style="Normal"})


config.font_size = 13.0-- and finally, return the configuration to wezterm

return config
