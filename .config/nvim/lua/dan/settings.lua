local cmd = vim.cmd
local g   = vim.g
local o   = vim.o
local opt = vim.opt
local A   = vim.api


-- Colorscheme / Column
o.colorcolumn = 80
vim.cmd([[
colorscheme gruvbox
set colorcolumn=80
set nohlsearch
]])
vim.highlight.create('ColorColumn', {ctermbg=0, guibg=lightgrey}, false)
o.background = "dark"
A.nvim_command("filetype plugin indent on")
o.termguicolors = true

-- Do not save when switching buffers
o.hidden = true

-- Decrease update time
o.timeoutlen = 500
o.updatetime = 200

-- Lines above and below cursor
o.scrolloff = 8

-- Better editor UI
o.number = true
o.numberwidth = 2
o.relativenumber = true
o.nu = true
o.rnu = true
o.signcolumn = "yes"
o.cursorline = true
o.guicursor = ""
o.guifont = "Roboto Mono:h12.5"
g.neovide_transparency = 0.99
o.errorbells = false

-- Better editing experience
o.expandtab = true
o.smarttab = true
o.cindent = true
o.smartindent = true
o.autoindent = true
o.wrap = false
o.textwidth = 300
o.tabstop = 4
o.shiftwidth = 4
o.softtabstop = -1 -- If negative, shiftwidth value is used
o.list = true
o.listchars = "trail:·,nbsp:◇,tab:→ ,extends:▸,precedes:◂"
-- o.listchars = "eol:¬,space:·,lead: ,trail:·,nbsp:◇,tab:→-,extends:▸,precedes:◂,multispace:···⬝,leadmultispace:│   ,"
-- o.formatoptions = "qrn1"

o.incsearch = true
-- Makes neovim and host OS clipboard play nicely with each other
o.clipboard = "unnamedplus"

-- Case insensitive searching UNLESS /C or capital in search
o.ignorecase = true
o.smartcase = true

-- Undo and backup options
o.backup = false
o.writebackup = false
o.undofile = true
o.swapfile = false
-- o.backupdir = "/tmp/"
-- o.directory = "/tmp/"
o.undodir = vim.fn.stdpath("config") .. "/undo"
o.autoread = true
-- Remember 50 items in commandline history
o.history = 50

-- Better buffer splitting
o.splitright = true
o.splitbelow = true

-- Preserve view while jumping
-- BUG This option causes an error!
-- o.jumpoptions = "view"

-- BUG: this won"t update the search count after pressing `n` or `N`
-- When running macros and regexes on a large file, lazy redraw tells neovim/vim not to draw the screen
-- o.lazyredraw = true

-- Better folds (don"t fold by default)
-- o.foldmethod = "indent"
-- o.foldlevelstart = 99
-- o.foldnestmax = 3
-- o.foldminlines = 1
--
opt.mouse = "a"

-- Map <leader> to space
g.mapleader = " "
g.maplocalleader = " "

g.python2_host_prog = "/usr/local/bin/python"
g.python3_host_prog = "/usr/local/bin/python3"

require('dan.minimap')
require('dan.ultisnips')
