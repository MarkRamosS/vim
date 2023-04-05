local nnoremap = require("ironhead.keymap").nnoremap
local inoremap = require("ironhead.keymap").inoremap


nnoremap("<leader>ca", 'ggVG"+y<C-o>')
nnoremap("<leader>sa", 'ggVG')
nnoremap("<leader>f", "<cmd>NERDTreeFind<CR>")
nnoremap("<leader>t", "<cmd>TagbarOpenAutoClose<CR>")
nnoremap("<leader>n", "<cmd>TagbarJumpNext<CR>")
nnoremap("<C-c>", '<cmd>q<CR>')

nnoremap("<leader>h", '<C-w>h')
nnoremap("<leader>l", '<C-w>l')
nnoremap("<leader>k", '<C-w>k')
nnoremap("<leader>j", '<C-w>j')
nnoremap("<leader>v", '<C-w>v')
nnoremap("<leader>s", '<C-w>s')

nnoremap("<leader>q", '<cmd>q<CR>')
nnoremap("<leader>w", '<cmd>w<CR>')
nnoremap("<leader>e", '<cmd>e<CR>')

nnoremap("<C-u>", '<C-u>zz')
nnoremap("<C-d>", '<C-d>zz')
nnoremap("<C-k>", 'kzz')
nnoremap("<C-j>", 'jzz')
--nnoremap("<C-A>", 'a_<ESC>r')

inoremap('(', '()<left>')
inoremap('"', '""<left>')
inoremap("'", "''<left>")
inoremap('[', '[]<left>')
inoremap('{', '{<CR>}<ESC>O')

--inoremap('))))', 'line(".") == 1 ? line(".") : "ggcc"',{ noremap = true, expr = true })
