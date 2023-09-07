-- ***********************************
-- ********** basic options **********
-- ***********************************

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.wrap = true
vim.opt.incsearch = true
vim.g.mapleader = ' '

vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.softtabstop = 2
vim.opt.expandtab = true

vim.opt.shiftround = true
vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.opt.termguicolors = true

vim.cmd.colorscheme "catppuccin"

-- clipboard
vim.opt.clipboard:append { 'unnamedplus' }

-- vim tex
vim.g.tex_flavor = "latex"
vim.g.vimtex_view_method = "zathura"
vim.g.vimtex_quickfix_mode = 0
vim.g.conceallevel = 1
vim.g.tex_conceal = "abdmg"

vim.g.livepreview_previewer = 'zathura'
vim.g.livepreview_engine = 'pdflatex'
