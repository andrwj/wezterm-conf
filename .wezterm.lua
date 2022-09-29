local wezterm = require 'wezterm';
return {
   default_prog = {"/usr/bin/zsh", "-l"},
   font_size = 10.0,
   dpi = 96.0,
   font_shaper = "Harfbuzz",
   debug_key_events = true,
   keys = {
      { key = 'c', mods = 'ALT', action = wezterm.action.Copy },
      { key = 'v', mods = 'ALT', action = wezterm.action.Paste },
      { key = '=', mods = 'ALT', action = wezterm.action.IncreaseFontSize },
      { key = '-', mods = 'ALT', action = wezterm.action.DecreaseFontSize },
      {
         key = '\\',
         mods = 'CTRL|ALT',
         action = wezterm.action.SplitHorizontal { domain = 'CurrentPaneDomain' },
      },
      {
         key = '-',
         mods = 'CTRL|ALT',
         action = wezterm.action.SplitVertical { domain = 'CurrentPaneDomain' },
      },
      {
         key = 't',
         mods = 'ALT',
         action = wezterm.action.SpawnTab 'DefaultDomain',
      },
      {
         key = 'n',
         mods = 'ALT',
         action = wezterm.action.SpawnWindow,
      },
   },

   mouse_bindings = {
   {
      event = { Up = { streak = 1, button = 'Middle' } },
      mods = 'NONE',
      action = wezterm.action.Paste,
    },
  },
  initial_rows = 40,
  initial_cols = 150,
}
