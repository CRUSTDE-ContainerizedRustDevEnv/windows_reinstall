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

-- Luc: I want  to open the Debian bash terminal as default
config.default_domain = 'WSL:Debian'

config.keys = {
    -- Luc: Turn off the default ctrl+v "input the next character literally",
    -- because it works badly with the Windows Cliboard Manager Win+v.
    { key = 'v', mods = 'CTRL', action = wezterm.action.Nop },
}

-- and finally, return the configuration to wezterm
return config