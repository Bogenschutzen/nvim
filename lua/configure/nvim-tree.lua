local nvimtree_status_ok, nvimtree= pcall(require, "nvim-tree")
if not nvimtree_status_ok then
  return
end

-- examples for your init.lua

-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded = 1
vim.g.loaded_netrwPlugin = 1

nvimtree.setup({
  sort_by = "case_sensitive",
  view = {
    adaptive_size = true,
    mappings = {
      list = {
        { key = "n", action = "edit" },
        { key = "<C-c>", action = "copy" },
        { key = "N", action = "vsplit" },
        { key = "c", action = "" },
        { key = "h", action = "parent_node" },

      },
    },
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  },
})
