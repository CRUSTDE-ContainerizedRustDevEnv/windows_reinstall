-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This table will hold the configuration.
local config = {}

-- To work with windows and tabs
local mux = wezterm.mux

-- In newer versions of wezterm, use the config_builder which will
-- help provide clearer error messages
if wezterm.config_builder then
  config = wezterm.config_builder()
end

-- This is where you actually apply your config choices

-- never prompt for close confirmation
config.window_close_confirmation = 'NeverPrompt'

config.keys = {
    -- Turn off the default ctrl+v "input the next character literally",
    -- because it works badly with the Windows Clipboard Manager Win+v.
    { key = 'v', mods = 'CTRL', action = wezterm.action.Nop },
}

-- right-click for paste
config.mouse_bindings = {
  {
    event = { Down = { streak = 1, button = "Right" } },
    mods = "NONE",
    action = wezterm.action({ PasteFrom = "Clipboard" }),
  },
}

-- launch menu with WSL:Debian and git-bash
 config.launch_menu = {
      {
         label = "git-bash",
         args = { "C:\\Program Files\\Git\\bin\\bash.exe", "-l" },
         domain = { DomainName = "local" },
      },
      {
         label = "WSL:Debian",
         args = { "wsl.exe" },
         domain = { DomainName = "WSL:Debian" },
        cwd = '/home/',
      }
   }

-- and finally, return the configuration to wezterm
return config