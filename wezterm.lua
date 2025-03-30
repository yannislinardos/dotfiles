local wezterm = require('wezterm')

return {
  -- Launch into WSL (change "Ubuntu" if needed)
  default_prog = { "wsl.exe", "--distribution", "Ubuntu", "--cd", "~" },

  -- Better terminfo support for tmux + neovim
  term = "xterm-256color",

  -- font = wezterm.font_with_fallback {
  --   "JetBrainsMono Nerd Font",
  --   "Hack Nerd Font",
  -- },

  font_size = 11.0,
  line_height = 1.2,

  color_scheme = "Tokyo Night Moon",

  hide_tab_bar_if_only_one_tab = true,

  window_decorations = "TITLE|RESIZE", -- Hide titlebar but keep resizable

  window_padding = {
    left = 4,
    right = 4,
    top = 2,
    bottom = 2,
  },

  use_fancy_tab_bar = false,
  check_for_updates = false,

  colors = {
    cursor_bg = "white",
    cursor_border = "white",
  },

  audible_bell = "Disabled",
}
