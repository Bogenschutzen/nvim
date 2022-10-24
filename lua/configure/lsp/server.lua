local status_ok, mason = pcall(require, "mason")
if not status_ok then
	return
end

local status_ok, mason_config = pcall(require, "mason-lspconfig")
if not status_ok then
	return
end

local status_ok, lspconfig = pcall(require, "lspconfig")
if not status_ok then
	return
end

mason.setup({
  ui = {
    icons = {
      package_installed = "✓",
      package_pending = "➜",
      package_uninstalled = "✗",
    },
  },
})

mason_config.setup({
  ensure_installed = {
    "bashls",
    "clangd",
    "gopls",
  },
})

local servers = { "gopls", "clangd" }

for _, server in pairs(servers) do
	local opts = {
		on_attach = require("configure.lsp.client").on_attach,
		capabilities = require("configure.lsp.client").capabilities,
	}
	local has_custom_opts, server_custom_opts = pcall(require, "configure.lsp.settings." .. server)
	if has_custom_opts then
		opts = vim.tbl_deep_extend("force", opts, server_custom_opts)
	end
	lspconfig[server].setup(opts)
end
