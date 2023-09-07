-- **********************************
-- ********** mapping keys **********
-- **********************************
local map = vim.keymap.set

-- ****** normal mode ******

--map('n', '<Left>',  ':echoe "Use h"<CR>')
--map('n', '<Right>', ':echoe "Use l"<CR>')
--map('n', '<Up>',    ':echoe "Use k"<CR>')
--map('n', '<Down>',  ':echoe "Use j"<CR>')
--map('i', '<Left>',  '<esc>:echoe "Use h"<CR>')
--map('i', '<Right>', '<esc>:echoe "Use l"<CR>')
--map('i', '<Up>',    '<esc>:echoe "Use k"<CR>')
--map('i', '<Down>',  '<esc>:echoe "Use j"<CR>')

map('n', '<Left>',  '<nop>', {noremap = true})
map('n', '<Right>', '<nop>', {noremap = true})
map('n', '<Up>',    '<nop>', {noremap = true})
map('n', '<Down>',  '<nop>', {noremap = true})
map('i', '<Left>',  '<nop>', {noremap = true})
map('i', '<Right>', '<nop>', {noremap = true})
map('i', '<Up>',    '<nop>', {noremap = true})
map('i', '<Down>',  '<nop>', {noremap = true})

map('n', '<leader>w', ':w<CR>', {noremap = true})
map('n', '<leader>q', ':q<CR>', {noremap = true})
map('n', '<leader>wq', ':wq<CR>', {noremap = true})
map('n', '<leader>e', '%', {noremap = true, desc = 'Go to matching pair'})
map('n', '<leader><CR>', ':nohls<CR>', {noremap = true, desc = 'Set nohlsearch after search'})
map('n', '10o', '10o<esc>10ki', {noremap = true, desc = 'just add 10 white line below the cursor and insert in the first line'})
map('n', '<leader>s', ':source<CR>', {noremap = true, desc = 'source the vim config'})
map('n', '<leader>u', 'viwU', {noremap = true})

-- ****** insert mode *******
map('i', 'jk', '<esc>', {noremap = true, desc = 'map <esc> to jk'})
map('i', '<c-d>', '<esc>ddi', {noremap = true})
-- map('i', '\'', '\'\'<esc>i', {noremap = true})
-- map('i', '\"', '\"\"<esc>i', {noremap = true})
-- map('i', '(', '()<esc>i', {noremap = true})
-- map('i', '[', '[]<esc>i', {noremap = true})
-- map('i', '{', '{}<esc>i', {noremap = true})

--map('i', '<c-u>', '<esc>viwUA', {desc = "change the current word into uppercase"})



-- ****** bufferline keymap *******
map('n', '<leader>f', ':bp<CR>', {noremap = true})
map('n', '<leader>g', ':bn<CR>', {noremap = true})
map('n', 'tt', ':bd<CR>', {noremap = true})

--split the window
map('n', 'zl', ':set splitright<CR>:vsplit<CR>', {noremap = true})
map('n', 'zh', ':set nosplitright<CR>:vsplit<CR>', {noremap = true})
map('n', 'zj', ':set splitbelow<CR>:split<CR>', {noremap = true})
map('n', 'zk', ':set nosplitblow<CR>:split<CR>', {noremap = true})

--close the split
map('n', 'tr', ':exit<CR>', {noremap = true})

--skip between window
map('n', '<leader>l', '<c-w>l', {noremap = true})
map('n', '<leader>h', '<c-w>h', {noremap = true})
map('n', '<leader>j', '<c-w>j', {noremap = true})
map('n', '<leader>k', '<c-w>k', {noremap = true})
map('n', '<leader>t', ':exit<CR>', {noremap = true})

-- telescope keymappings
local builtin = require('telescope.builtin')
vim.keymap.set('n', 'ff', builtin.find_files, {})
vim.keymap.set('n', 'fg', builtin.live_grep, {})
vim.keymap.set('n', 'fb', builtin.buffers, {})
vim.keymap.set('n', 'fh', builtin.help_tags, {})

map('n', 'fy', ':FZF ~<CR>', {noremap = true})

