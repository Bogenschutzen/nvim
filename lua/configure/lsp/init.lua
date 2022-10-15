local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
  return
end

require "configure.lsp.server"
require("configure.lsp.client").setup()
--require "user.lsp.null-ls"
