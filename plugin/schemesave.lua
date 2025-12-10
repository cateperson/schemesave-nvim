local schemesave = require("schemesave")

vim.api.nvim_create_user_command("SaveColorScheme", function()
	schemesave.save_theme()
end, {})

vim.api.nvim_create_user_command("LoadColorScheme", function()
	schemesave.load_theme()
end, {})
