-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices

-- Low-Eye-Strain
config.colors = {
  foreground = "#E6EDF3",
  background = "#0D1117",
  cursor_bg = "#79C0FF",
  cursor_border = "#79C0FF",
  cursor_fg = "#0D1117",
  selection_bg = "#1F2A37",
  selection_fg = "#E6EDF3",
  ansi = { "#161B22", "#FF7B72", "#3FB950", "#D29922", "#58A6FF", "#BC8CFF", "#39C5CF", "#C9D1D9" },
  brights = { "#30363D", "#FFA198", "#56D364", "#E3B341", "#79C0FF", "#D2A8FF", "#56D4DD", "#FFFFFF" },
}

config.font = wezterm.font("MesloLGS Nerd Font Mono")
config.font_size = 19.7

config.enable_tab_bar = false

config.window_decorations = "RESIZE"
-- config.window_background_opacity = 0.8
-- config.macos_window_background_blur = 10

config.initial_rows = 45
config.initial_cols = 125

-- and finally, return the configuration to wezterm
return config
