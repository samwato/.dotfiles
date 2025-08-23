local M = {}

function M.reloadConfig()
  for name,_ in pairs(package.loaded) do
  if name:match("^(autocmds|config|keymaps|options|plugins|utils)") then
    package.loaded[name] = nil
    end
  end

  dofile(vim.env.MYVIMRC)
end

return M
