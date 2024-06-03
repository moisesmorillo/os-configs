vim.api.nvim_create_user_command("UpdateTM", function()
  vim.cmd("TSUpdate")
  local mason_registry = require("mason-registry")
  local installed_packages = mason_registry.get_installed_package_names()
  vim.cmd("MasonInstall " .. table.concat(installed_packages, " "))
end, { desc = "Install/Update treesitter and mason packages" })
