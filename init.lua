-- Entry point for the plugin
-- This file loads the main module from lua/ directory

-- Prevent loading the plugin multiple times
if vim.g.loaded_myplugin == 1 then
  return
end
vim.g.loaded_myplugin = 1

-- Import the main module
local myplugin = require('myplugin')

-- Initialize the plugin
myplugin.setup()
