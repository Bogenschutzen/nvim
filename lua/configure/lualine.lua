local lualine_status_ok, lualine = pcall(require, "lualine")
if not lualine_status_ok then
  return
end

local custom_gruvbox = require'lualine.themes.powerline_dark'

-- Change the background of lualine_c section for normal mode
custom_gruvbox.normal.c.bg = '#112233'

lualine.setup {
  options = { theme  = custom_gruvbox },
  ...
}
