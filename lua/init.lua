local M = {}

M.log = function (message)
  local fp = io.open(os.getenv('HOME') .. '/Logs/nvim.txt', 'a')
  if fp ~= nil then
    fp:write([[LOG: ]] .. os.date() .. '\n')
    fp:write(message .. '\n\n')
    fp:close()
  end
end

return M
