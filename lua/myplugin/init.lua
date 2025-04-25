-- Main module file for the plugin
local M = {}

-- Default configuration
local default_config = {
  -- Add your plugin's default settings here
  enabled = true,
  -- Example settings
  keymaps = {
    toggle = '<leader>mt',
  },
  -- Add more default settings as needed
}

-- Store the user's configuration
M.config = {}

-- Initialize the plugin with user config
function M.setup(opts)
  -- Merge user config with default config
  M.config = vim.tbl_deep_extend("force", default_config, opts or {})

  -- Check if plugin is enabled
  if not M.config.enabled then
    return
  end

  -- Set up any global keymappings
  M._create_keymaps()
  
  -- Set up any autocommands
  M._create_autocmds()
  
  -- Load any additional plugin components
  require('myplugin.commands').setup(M.config)
end

-- Create plugin keymappings
function M._create_keymaps()
  -- Example keymap
  vim.keymap.set('n', M.config.keymaps.toggle, function()
    M.toggle()
  end, { desc = "Toggle MyPlugin" })
  
  -- Add more keymaps as needed
end

-- Create autocmds for the plugin
function M._create_autocmds()
  local group = vim.api.nvim_create_augroup('MyPlugin', { clear = true })
  
  -- Example autocommand
  vim.api.nvim_create_autocmd('BufEnter', {
    group = group,
    pattern = '*',
    callback = function()
      -- Your autocmd logic here
    end,
    desc = 'MyPlugin buffer enter handler',
  })
  
  -- Add more autocommands as needed
end

-- Example function - Toggle plugin functionality
function M.toggle()
  -- Add your toggle implementation
  vim.notify("MyPlugin toggled!", vim.log.levels.INFO)
  -- Implementation goes here
end

-- Add more public functions as needed

return M
