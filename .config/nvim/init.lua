require("huyquangdn")


local has = vim.fn.has
local is_unix = has "macunix"
local is_win = has "win32"
local is_wsl = has "wsl"

if is_unix then
  vim.opt.clipboard:append { 'unnamedplus' }
end
if is_win then
  vim.opt.clipboard:prepend { 'unnamed', 'unnamedplus' }
end
