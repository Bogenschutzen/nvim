--[[
local status_ok, leap = pcall(require, "leap")
if not status_ok then
  return
end
--]]

require('leap').opts.highlight_unlabeled_phase_one_targets = true
vim.keymap.set({'x', 'o', 'n'}, '.', '<Plug>(leap-backward-to)')
vim.keymap.set({'x', 'o', 'n'}, 'e', '<Plug>(leap-forward-to)')
--[[
local status_ok, leap = pcall(require, "leap")
if not status_ok then
  return
end
--]]
