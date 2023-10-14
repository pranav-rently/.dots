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

config.color_scheme = 'Catppuccin Macchiato'

config.font = wezterm.font 'Caskaydia Cove Nerd Font'
config.font_size = 17.5

config.use_fancy_tab_bar = false

config.tab_bar_at_bottom = true

--[[ config.window_background_image = '/home/rently/Pictures/wallpapers/zen.png' ]]
config.window_background_image_hsb = {
  -- Darken the background image by reducing it to 1/3rd
  brightness = 0.1,

  -- You can adjust the hue by scaling its value.
  -- a multiplier of 1.0 leaves the value unchanged.
  hue = 0.8,

  -- You can adjust the saturation also.
  saturation = 1.0,
}

config.keys = {
  {
    key = '"',
    mods = 'CTRL|SHIFT',
    action = wezterm.action.SplitVertical { domain = 'CurrentPaneDomain' },
  },
  {
    key = '%',
    mods = 'CTRL|SHIFT',
    action = wezterm.action.SplitHorizontal { domain = 'CurrentPaneDomain' },
  }
}

-- and finally, return the configuration to wezterm
return config
