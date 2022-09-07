local keymaps = require("dan.utils.keymap")
local nmap = keymaps.nmap
local nnoremap = keymaps.nnoremap
local silent = { silent = true }


nnoremap("<leader>q", ":q<Cr>")
nnoremap("<leader>s", ":w<Cr>")
nnoremap("<leader>w", ":w<Cr>")
nnoremap("<silent> <tab>", ":if &modifiable && !&readonly && &modified <CR> :write<CR> :endif<CR>:bnext<CR>")

-- Search
nnoremap("<leader>f", ":Files<Cr>")
nnoremap("<leader>r", ":Ag<Cr>")

-- Splits
nnoremap("<leader>v", ":vsp<Cr>")
nnoremap("<leader>h", ":sp<Cr>")

-- Navigate panes
nnoremap("<s-left>", "<C-W><C-H>")
nnoremap("<s-down>", "<C-W><C-J>")
nnoremap("<s-up>", "<C-W><C-K>")
nnoremap("<s-right>", "<C-W><C-L>")

-- Navigate tabs
nnoremap("<s-t>", ":tabnext<Cr>")

-- Git
nmap("<leader>g", ":G<CR>")
nmap("<leader>gf", ":diffget //3<CR>")
nmap("<leader>gj", ":diffget //2<CR>")

-- UndoTree
nnoremap("<leader>u", ":UndotreeShow<CR>")
