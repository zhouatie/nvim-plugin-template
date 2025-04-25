-- Commands module for the plugin
local M = {}

-- Setup commands related to the plugin
function M.setup(config)
  -- Register any plugin commands here
  vim.api.nvim_create_user_command('MyPluginToggle', function()
    require('myplugin').toggle()
  end, {
    desc = 'Toggle MyPlugin functionality'
  })
  
  -- Example command with arguments
  vim.api.nvim_create_user_command('MyPluginCommand', function(opts)
    -- Handle the command with arguments
    local args = opts.args
    -- Implementation goes here
    vim.notify("MyPlugin command executed with args: " .. args, vim.log.levels.INFO)
  end, {
    desc = 'Execute MyPlugin command',
    nargs = '?', -- Optional arguments
    complete = function(ArgLead, CmdLine, CursorPos)
      -- Command completion function
      return { 'option1', 'option2', 'option3' } -- Example completions
    end,
  })
  
  -- Add more commands as needed
end

return M
