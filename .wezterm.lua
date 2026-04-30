-- Pull in the wezterm API
local wezterm = require("wezterm")
local act = wezterm.action

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

local function basename(path)
  return path and path:gsub("\\", "/"):match("([^/]+)$") or ""
end

local function activate_tmux_window(tmux_index, wezterm_index)
  return wezterm.action_callback(function(window, pane)
    if basename(pane:get_foreground_process_name()) == "tmux" then
      window:perform_action(act.SendString("\x01" .. tmux_index), pane)
    else
      window:perform_action(act.ActivateTab(wezterm_index), pane)
    end
  end)
end

config.keys = {
  { key = "1", mods = "CMD", action = activate_tmux_window("0", 0) },
  { key = "2", mods = "CMD", action = activate_tmux_window("1", 1) },
  { key = "3", mods = "CMD", action = activate_tmux_window("2", 2) },
  { key = "4", mods = "CMD", action = activate_tmux_window("3", 3) },
  { key = "5", mods = "CMD", action = activate_tmux_window("4", 4) },
  { key = "6", mods = "CMD", action = activate_tmux_window("5", 5) },
  { key = "7", mods = "CMD", action = activate_tmux_window("6", 6) },
  { key = "8", mods = "CMD", action = activate_tmux_window("7", 7) },
  { key = "9", mods = "CMD", action = activate_tmux_window("8", 8) },

  { key = "[", mods = "CMD", action = act.ActivateTabRelative(-1) },
  { key = "]", mods = "CMD", action = act.ActivateTabRelative(1) },
}

-- and finally, return the configuration to wezterm
return config
