-- This file is for setting up any plugin-specific options
-- that need to be set before the plugin itself loads

-- This file is loaded automatically by Neovim
-- Any variables and commands set here are available globally

-- Example: Define a global variable for the plugin
vim.g.myplugin_global_option = true

-- Example: Define vim.commands (if needed before init)
-- vim.cmd([[command! MyPluginQuickCommand lua require('myplugin').quick_function()]])

-- If you need to set up autocommands before plugin initialization, you can do it here
-- but generally, these should be moved to the main plugin module
