local M = {}
local theme_file = vim.fn.stdpath("data") .. "/current_theme"

function M.save_theme()
	local f = io.open(theme_file, "w")
	local theme = vim.g.colors_name
	if f then
		f:write(theme)
		f:close()
	end
end

function M.load_theme()
	local f = io.open(theme_file, "r")
	if f then
		local theme = f:read("*a")
		vim.cmd.colorscheme(theme)
		f:close()
	end
end

return M
