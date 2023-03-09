require('huyquangDN.base')
require('huyquangDN.highlights')
require('huyquangDN.maps')
require('huyquangDN.plugins')

local has = vim.fn.has
local is_mac = has "macunix"
local is_win = has "win32"

vim.opt.clipboard:append { 'unnamedplus' }

if is_mac then
  require('huyquangDN.macos')
end
if is_win then
  require('huyquangDN.windows')
end
