local builtin = require('telescope.builtin')
vim.keymap.set("n", "<leader>ff", "<cmd> Telescope find_files <CR>")
vim.keymap.set("n", "<leader>fa", "<cmd> Telescope find_files follow=true no_ignore=true hidden=true <CR>")
vim.keymap.set("n", "<leader>fe", "<cmd> Telescope file_browser <CR>")
vim.keymap.set("n", "<leader>fg", "<cmd> Telescope live_grep <CR>")
vim.keymap.set("n", "<leader>fb", "<cmd> Telescope buffers <CR>")
vim.keymap.set("n", "<leader>fh", "<cmd> Telescope help_tags <CR>")vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', '<leader>ps', function()
	builtin.grep_string({search = vim.fn.input("Grep > ") });
end)

local status, telescope = pcall(require, "telescope")
if (not status) then return end
local actions = require('telescope.actions')

local function telescope_buffer_dir()
  return vim.fn.expand('%:p:h')
end


telescope.setup {
  defaults = {
    mappings = {
      n = {
        ["q"] = actions.close
      },
    },
  },
  extensions = { },
}

