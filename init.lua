-- ***********************************
-- **********   init.lua   ***********
-- ***********************************

if vim.g.vscode then
  
else
require("basic")
require("keymap")
require("plugins")
--require("colorscheme")

-- plugins' config
require("plugin.devicons")
require("plugin.lualine")
require("plugin.bufferline")
require("plugin.catppuccin")
require("plugin.treesitter")
require("plugin.telescope")
--require("plugin.mason")
require("plugin.lspconfig")
require("plugin.nvim-cmp")
require("plugin.luasnip")
end
