local cmd = vim.cmd
local g   = vim.g
local o   = vim.o
local opt = vim.opt
local A   = vim.api

A.nvim_command("filetype plugin indent on")

o.termguicolors = true
o.background = "dark"

-- Do not save when switching buffers
-- o.hidden = true

-- Decrease update time
o.timeoutlen = 500
o.updatetime = 200

-- Number of screen lines to keep above and below the cursor
o.scrolloff = 8
 ------au FocusGained * checktime

-- Better editor UI
o.number = true
o.numberwidth = 2
o.relativenumber = true
o.nu = true
o.rnu = true
o.signcolumn = "yes"
o.colorcolumn = 80
--cmd([[highlight ColorColumn ctermbg=0 guibg=lightgrey]])
--A.nvim_set_hl(0, "ColorColumn", { ctermbg=0, bg=lightgrey })
--vim.highlight.create('ColorColumn', {ctermbg=0, guibg=lightgrey}, false)




vim.cmd[[
colorscheme gruvbox
]]
vim.highlight.create('ColorColumn', {ctermbg=0, guibg=lightgrey}, false)

--local augroup = vim.api.nvim_create_augroup('highlight_cmds', {clear = true})

--[[vim.api.nvim_create_autocmd('ColorScheme', {]]
  --[[pattern = 'rubber',]]
  --[[group = augroup,]]
  --[[desc = 'Change string highlight',]]
  --[[callback = function()]]
    --[[vim.api.nvim_set_hl(0, 'String', {fg = '#FFEB95'})]]
  --[[end]]
--[[})]]

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
o.undodir = "~/.config/nvim/undodir"
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


-- minimap
g.minimap_width = 10
g.minimap_auto_start = 1
g.minimap_auto_start_win_enter = 1

-- nerdcommenter
cmd[[filetype plugin on]]

-- Ripgrep
-- brew install ripgrep

-- fzf
cmd[[let g:fzf_layout = { 'window': { 'width': 1.0, 'height': 0.7, 'relative': v:false, 'yoffset': 1.0 } }]]

-- jedi
-- disable autocompletion, cause we use deoplete for completion
cmd[[
let g:jedi#completions_enabled = 0
let g:jedi#popup_on_dot = 0
]]
-- open the go-to function in split, not another buffer
cmd[[let g:jedi#use_splits_not_buffers = "right"]]


--[[GLOBAL
    sys reqs:
    brew install python
    brew install python3
    pip2 install neovim --upgrade
    pip3 install neovim --upgrade]]
g.python2_host_prog = "/usr/local/bin/python"
g.python3_host_prog = "/usr/local/bin/python3"

--vim diff: show full file/context]]
cmd[[
if &diff
    set diffopt=filler,context:1000000
endif
]]

-- UltiSnips
g.UltiSnipsExpandTrigger="<tab>"
g.UltiSnipsJumpForwardTrigger="<c-b>"
g.UltiSnipsJumpBackwardTrigger="<c-z>"
-- If you want :UltiSnipsEdit to split your window.
g.UltiSnipsEditSplit="vertical"
