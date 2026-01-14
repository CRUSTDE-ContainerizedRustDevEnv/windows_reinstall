-- Bestia wezterm configuration (2026-01)
-- This is very opinionated. I try to make the terminal behave similar to VSCode.
-- After changes to this configuration use ctrl+shift+R inside wezterm to reload the config.
-- If there are errors in config, wezterm will open a windows with errors.

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
    -- The original shortcut ctrl+v: Input the next character literally.
    -- The original shortcut works badly with the Windows Clipboard Manager Win+v.
    -- New meaning ctrl+v: Paste from clipboard (just like in VSCode)
    -- Instead of old Ctrl + Shift + V or Shift + Insert or right-click
    { key = 'v', mods = 'CTRL', action = wezterm.action({ PasteFrom = "Clipboard" }) },

    -- The original shortcut ctrl+c: Kill the current process.
    -- New meaning ctrl+c: Copy to clipboard (just like in VSCode)
    { key = 'c', mods = 'CTRL', action = wezterm.action.CopyTo('ClipboardAndPrimarySelection') },
    
    -- The original shortcut ctrl+q: Resume terminal output after freezing.
    -- New meaning ctrl+q: Kill the current process (instead of ctrl+c).
    { key = 'q', mods = 'CTRL', action = wezterm.action.SendKey{ key='c', mods='CTRL' } },
    
    -- The original shortcut ctrl+s: Freeze the terminal output.
    -- It is now unusable. I don't use it and have changed the shortcut of ctrl+q Resume terminal output
    -- New meaning: nothing
    { key = 's', mods = 'CTRL', action = wezterm.action.DisableDefaultAssignment, },
    
    -- The original shortcut ctrl+z: Suspend the current process.
    -- I don't use it and it is used in VSCode as Undo. Potential confusion.
    -- New meaning: nothing
    { key = 'z', mods = 'CTRL', action = wezterm.action.DisableDefaultAssignment, },

    -- Remove a word to the left is useful. The terminal uses ctrl+w, but VSCode uses ctrl+backspace.
    -- New meaning ctrl+backspace: Remove word 
    { key = 'Backspace', mods = 'CTRL', action = wezterm.action.SendKey {key = 'w', mods = 'CTRL'} },
    
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