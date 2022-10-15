-- local db = require("dashboard")
local db_status_ok, db= pcall(require, "dashboard")
if not db_status_ok then
  return
end

db.custom_header = {
       '             ▄▄▀▀▀▀▀▀▀▀▄▄              ',
       '          ▄▀▀            ▀▄▄           ',
       '        ▄▀                  ▀▄         ',
       '       ▌             ▀▄       ▀▀▄      ',
       '      ▌                ▀▌        ▌     ',
       '     ▐                  ▌        ▐     ',
       '     ▌▐    ▐    ▐       ▌         ▌    ',
       '    ▐ ▌    ▌  ▐ ▌      ▐       ▌▐ ▐    ',
       '    ▐ ▌    ▌▄▄▀▀▌▌     ▐▀▌▀▌▄  ▐ ▌ ▌   ',
       '     ▌▌    ▐▀▄▌▌▐▐    ▐▐▐ ▐ ▌▌ ▐ ▌▄▐   ',
       '   ▄▀▄▐    ▌▌▄▀▄▐ ▌▌ ▐ ▌▄▀▄ ▐  ▐ ▌ ▀▄  ',
       '  ▀▄▀  ▌  ▄▀ ▌█▐  ▐▐▀   ▌█▐ ▀▄▐ ▌▌   ▀ ',
       '   ▀▀▄▄▐ ▀▄▀ ▀▄▀        ▀▄▀▄▀ ▌ ▐      ',
       '      ▀▐▀▄ ▀▄        ▐      ▀▌▐        ',
       '        ▌ ▌▐ ▀              ▐ ▐        ',
       '        ▐ ▐ ▌    ▄▄▀▀▀▀▄    ▌ ▐        ',
       '         ▌▐ ▐▄   ▐     ▌  ▄▀  ▐        ',
       '        ▐  ▌▐▐▀▄  ▀▄▄▄▀ ▄▀▐   ▐        ',
       '        ▌▌ ▌▐ ▌ ▀▄▄    ▄▌▐ ▌  ▐        ',
       '       ▐ ▐ ▐▐ ▌    ▀▀▄▀▌▐  ▌  ▌        ',
       '       ▌  ▌▐ ▌        ▐▀▄▌ ▐           ',
}

db.custom_center = {
    {icon = "  ", desc = 'Recently lastest session    ', shortcut = "Leader s l", action = ""},
    {icon = "  ", desc = "Recently opened files       ", shortcut = "Leader f h", action = ""},
    {icon = "  ", desc = "Find File                   ", shortcut = "leader f f", action = ""},
    {icon = "  ", desc = "File Browser                ", shortcut = "leader f b", action = ""},
    {icon = "  ", desc = "Find Word                   ", shortcut = "leader f w", action = ""},
    {icon = "  ", desc = "Open Personal dotfiles      ", shortcut = "leader e e", action = "edit $MYVIMRC"}
}

db.custom_footer = function()
    local footer = {'', '🎉 Have fun with neovim'}
    if packer_plugins ~= nil then
        local count = #vim.tbl_keys(packer_plugins)
        footer[2] = ' neovim loaded ' .. count .. ' plugins'
        for key, value in pairs(packer_plugins) do
            table.insert(footer, ' ' .. key)
        end
    end

    print(footer)
    return footer
end
