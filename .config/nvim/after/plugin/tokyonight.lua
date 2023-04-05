require('tokyonight').setup({
	transparent = true, -- Enable this to disable setting the background color
	terminal_colors = true,
	styles = {
		-- Style to be applied to different syntax groups
		-- Value is any valid attr-list value for `:help nvim_set_hl`
		comments = { italic = true },
		keywords = { italic = true },
		functions = {},
		variables = {},
		-- Background styles. Can be "dark", "transparent" or "normal"
		sidebars = "dark", -- style for sidebars, see below
		floats = "dark", -- style for floating windows
	},
})

function setColor()
	vim.cmd.colorscheme('tokyonight-night')
	vim.api.nvim_set_hl(0, 'Normal', {bg = 'none'})
	vim.api.nvim_set_hl(0, 'NormalFloat', {bg = 'none'})
end

setColor()
