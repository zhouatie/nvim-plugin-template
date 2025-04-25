-- Utilities module for the plugin
local M = {}

-- Example utility function
function M.notify(msg, level)
  level = level or vim.log.levels.INFO
  vim.notify(string.format("[MyPlugin] %s", msg), level)
end

-- Example function to safely require a module
function M.safe_require(module)
  local status, result = pcall(require, module)
  if not status then
    M.notify("Could not require module: " .. module, vim.log.levels.ERROR)
    return nil
  end
  return result
end

-- Add more utility functions as needed

return M
