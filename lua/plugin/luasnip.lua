-- load snippets from path/of/your/nvim/config/snippets
require("luasnip.loaders.from_vscode").lazy_load({ paths = { "./snippets" } })

local ls = require("luasnip")
vim.keymap.set({ "i", "s" }, "<C-l>", function()
  if ls.expand_or_jumpable() then
    ls.expand_or_jump()
  end
end, {}) 

--require("luasnip.loaders").edit_snippet_files {
--  extend = function(ft, paths)
--    if #paths == 0 then
--      return {
--        { "$CONFIG/" .. ft .. ".lua",
--          string.format("%s/%s.lua", "/home/yes/.config/nvim/snippets", ft) }
--      }
--    end
--
--    return {}
--  end
--}

--command! LuaSnipEdit :lua require("luasnip.loaders").edit_snippet_files()
vim.cmd(":command LuaSnipEdit :lua require(\"luasnip.loaders\").edit_snippet_files()")
