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

-- use the Debian bash terminal as default
config.default_domain = 'WSL:Debian'

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
         label = "WSL:Debian",
         args = { "wsl.exe" },
         domain = { DomainName = "WSL:Debian" },
        cwd = '/home/',
      },
      {
         label = "git-bash",
         args = { "C:\\Program Files\\Git\\bin\\bash.exe", "-l" },
         domain = { DomainName = "local" },
      },
   }

-- on start open 2 windows side-by-side for WSL:Debian and git-bash
wezterm.on('gui-startup', 
  function()
    local win_1_tab_1, win_1_pane_1, win_1 = mux.spawn_window { 
      -- workspace = 'WSL-Debian',
      position = {
          x = 0,
          y = 0,
        },
      width = 72, height = 37,
      domain = { DomainName = 'WSL:Debian' }
      }

    local win2_tab_1, win_2_pane_1, win_2 = mux.spawn_window { 
      -- workspace = 'git-bash' ,
      position = {
          x = 901,
          y = 0,
        },
      width = 72, height = 37, 
      domain = { DomainName = 'local' }, 
      args = { 'C:\\Program Files\\Git\\bin\\bash.exe' } 
    }

    win_1:set_title 'WSL:Debian'
    win_2:set_title 'git-bash'

    win_1_tab_1:set_title 'WSL:Debian'
    win2_tab_1:set_title 'git-bash'

  end
)

-- and finally, return the configuration to wezterm
return config