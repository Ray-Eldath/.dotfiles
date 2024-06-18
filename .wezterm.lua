local wezterm = require 'wezterm'
local act = wezterm.action
local config = {}

config.default_prog = { '/opt/homebrew/bin/fish' }
config.font = wezterm.font 'Cascadia Mono PL'
config.font_size = 16.0
config.color_scheme = 'Unikitty Light (base16)'
config.use_fancy_tab_bar = false
config.tab_bar_at_bottom = false
config.audible_bell = 'Disabled'
config.window_close_confirmation = 'NeverPrompt'
config.keys = {
  { key = 'LeftArrow', mods = 'SHIFT', action = act.ActivateTabRelative(-1) },
  { key = 'RightArrow', mods = 'SHIFT', action = act.ActivateTabRelative(1) },
  { key = '%', mods = 'SUPER|SHIFT', action = act.SplitVertical },
  { key = '"', mods = 'SUPER|SHIFT', action = act.SplitHorizontal },
  { key = 'w', mods = 'CMD', action = act.CloseCurrentPane { confirm = true } },
  { key = 't', mods = 'CMD|SHIFT', action = act.ShowLauncher },
  { key = 'LeftArrow', mods = 'SUPER|SHIFT', action = act.ActivatePaneDirection 'Left' },
  { key = 'RightArrow', mods = 'SUPER|SHIFT', action = act.ActivatePaneDirection 'Right' },
  { key = 'UpArrow', mods = 'SUPER|SHIFT', action = act.ActivatePaneDirection 'Up' },
  { key = 'DownArrow', mods = 'SUPER|SHIFT', action = act.ActivatePaneDirection 'Down' },
  { key = 'Backspace', mods = 'META', action = act.SendString '\x17' }
}

local TAG_BG_COLOR = '#F7F5F2'
config.colors = {
  tab_bar = {
    -- The color of the strip that goes along the top of the window
    -- (does not apply when fancy tab bar is in use)
    background = TAG_BG_COLOR,

    -- The active tab is the one that has focus in the window
    active_tab = {
      bg_color = '#F0F0F0',
      fg_color = '#3C486B',
      intensity = 'Bold',
    },

    inactive_tab = {
      bg_color = TAG_BG_COLOR,
      fg_color = '#909090',
    },

    inactive_tab_hover = {
      bg_color = TAG_BG_COLOR,
      fg_color = '#808080',
      italic = true,
    },

    -- The new tab button that let you create new tabs
    new_tab = {
      bg_color = TAG_BG_COLOR,
      fg_color = '#909090',
    },

    new_tab_hover = {
      bg_color = TAG_BG_COLOR,
      fg_color = '#808080',
      italic = true,
    },
  },
}

return config
