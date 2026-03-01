-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

_G._packer = _G._packer or {}
_G._packer.inside_compile = true

local time
local profile_info
local should_profile = false
if should_profile then
  local hrtime = vim.loop.hrtime
  profile_info = {}
  time = function(chunk, start)
    if start then
      profile_info[chunk] = hrtime()
    else
      profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
    end
  end
else
  time = function(chunk, start) end
end

local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end
  if threshold then
    table.insert(results, '(Only showing plugins that took longer than ' .. threshold .. ' ms ' .. 'to load)')
  end

  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/Users/dan/.cache/nvim/packer_hererocks/2.1.1771967821/share/lua/5.1/?.lua;/Users/dan/.cache/nvim/packer_hererocks/2.1.1771967821/share/lua/5.1/?/init.lua;/Users/dan/.cache/nvim/packer_hererocks/2.1.1771967821/lib/luarocks/rocks-5.1/?.lua;/Users/dan/.cache/nvim/packer_hererocks/2.1.1771967821/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/Users/dan/.cache/nvim/packer_hererocks/2.1.1771967821/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  LuaSnip = {
    loaded = true,
    path = "/Users/dan/.local/share/nvim/site/pack/packer/start/LuaSnip",
    url = "https://github.com/L3MON4D3/LuaSnip"
  },
  ale = {
    loaded = true,
    path = "/Users/dan/.local/share/nvim/site/pack/packer/start/ale",
    url = "https://github.com/dense-analysis/ale"
  },
  ["cmp-buffer"] = {
    loaded = true,
    path = "/Users/dan/.local/share/nvim/site/pack/packer/start/cmp-buffer",
    url = "https://github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/Users/dan/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-path"] = {
    loaded = true,
    path = "/Users/dan/.local/share/nvim/site/pack/packer/start/cmp-path",
    url = "https://github.com/hrsh7th/cmp-path"
  },
  cmp_luasnip = {
    loaded = true,
    path = "/Users/dan/.local/share/nvim/site/pack/packer/start/cmp_luasnip",
    url = "https://github.com/saadparwaiz1/cmp_luasnip"
  },
  ["coc-pyright"] = {
    loaded = true,
    path = "/Users/dan/.local/share/nvim/site/pack/packer/start/coc-pyright",
    url = "https://github.com/fannheyward/coc-pyright"
  },
  ["conform.nvim"] = {
    config = { "\27LJ\2\nY\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\2\17lsp_fallback\2\15timeout_ms\3Ð\15\vformat\fconform\frequireó\4\1\0\6\0\29\0!6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\18\0005\3\4\0005\4\3\0=\4\5\0035\4\6\0=\4\a\0035\4\b\0=\4\t\0035\4\n\0=\4\v\0035\4\f\0=\4\r\0035\4\14\0=\4\15\0035\4\16\0=\4\17\3=\3\19\0025\3\20\0=\3\21\2B\0\2\0016\0\22\0009\0\23\0009\0\24\0005\2\25\0'\3\26\0003\4\27\0005\5\28\0B\0\5\1K\0\1\0\1\0\1\tdesc\vFormat\0\14<leader>p\1\3\0\0\6n\6v\bset\vkeymap\bvim\19format_on_save\1\0\2\17lsp_fallback\2\15timeout_ms\3Ð\15\21formatters_by_ft\1\0\2\19format_on_save\0\21formatters_by_ft\0\rmarkdown\1\3\0\0\14prettierd\rprettier\tyaml\1\3\0\0\14prettierd\rprettier\tjson\1\3\0\0\14prettierd\rprettier\20typescriptreact\1\3\0\0\14prettierd\rprettier\15typescript\1\3\0\0\14prettierd\rprettier\20javascriptreact\1\3\0\0\14prettierd\rprettier\15javascript\1\0\a\15typescript\0\20javascriptreact\0\tyaml\0\15javascript\0\rmarkdown\0\tjson\0\20typescriptreact\0\1\3\0\0\14prettierd\rprettier\nsetup\fconform\frequire\0" },
    loaded = true,
    path = "/Users/dan/.local/share/nvim/site/pack/packer/start/conform.nvim",
    url = "https://github.com/stevearc/conform.nvim"
  },
  ["friendly-snippets"] = {
    loaded = true,
    path = "/Users/dan/.local/share/nvim/site/pack/packer/start/friendly-snippets",
    url = "https://github.com/rafamadriz/friendly-snippets"
  },
  ["fzf.vim"] = {
    loaded = true,
    path = "/Users/dan/.local/share/nvim/site/pack/packer/start/fzf.vim",
    url = "https://github.com/junegunn/fzf.vim"
  },
  gruvbox = {
    loaded = true,
    path = "/Users/dan/.local/share/nvim/site/pack/packer/start/gruvbox",
    url = "https://github.com/gruvbox-community/gruvbox"
  },
  harpoon = {
    loaded = true,
    path = "/Users/dan/.local/share/nvim/site/pack/packer/start/harpoon",
    url = "https://github.com/ThePrimeagen/harpoon"
  },
  ["jedi-vim"] = {
    loaded = true,
    path = "/Users/dan/.local/share/nvim/site/pack/packer/start/jedi-vim",
    url = "https://github.com/davidhalter/jedi-vim"
  },
  ["leap.nvim"] = {
    loaded = true,
    path = "/Users/dan/.local/share/nvim/site/pack/packer/start/leap.nvim",
    url = "https://codeberg.org/andyg/leap.nvim"
  },
  ["lualine.nvim"] = {
    loaded = true,
    path = "/Users/dan/.local/share/nvim/site/pack/packer/start/lualine.nvim",
    url = "https://github.com/nvim-lualine/lualine.nvim"
  },
  ["mason-lspconfig.nvim"] = {
    loaded = true,
    path = "/Users/dan/.local/share/nvim/site/pack/packer/start/mason-lspconfig.nvim",
    url = "https://github.com/williamboman/mason-lspconfig.nvim"
  },
  ["mason.nvim"] = {
    loaded = true,
    path = "/Users/dan/.local/share/nvim/site/pack/packer/start/mason.nvim",
    url = "https://github.com/mason-org/mason.nvim"
  },
  ["minimap.vim"] = {
    loaded = true,
    path = "/Users/dan/.local/share/nvim/site/pack/packer/start/minimap.vim",
    url = "https://github.com/wfxr/minimap.vim"
  },
  neoformat = {
    loaded = true,
    path = "/Users/dan/.local/share/nvim/site/pack/packer/start/neoformat",
    url = "https://github.com/sbdchd/neoformat"
  },
  nerdcommenter = {
    loaded = true,
    path = "/Users/dan/.local/share/nvim/site/pack/packer/start/nerdcommenter",
    url = "https://github.com/scrooloose/nerdcommenter"
  },
  nerdtree = {
    loaded = true,
    path = "/Users/dan/.local/share/nvim/site/pack/packer/start/nerdtree",
    url = "https://github.com/scrooloose/nerdtree"
  },
  ["none-ls.nvim"] = {
    loaded = true,
    path = "/Users/dan/.local/share/nvim/site/pack/packer/start/none-ls.nvim",
    url = "https://github.com/nvimtools/none-ls.nvim"
  },
  ["nvim-base16"] = {
    loaded = true,
    path = "/Users/dan/.local/share/nvim/site/pack/packer/start/nvim-base16",
    url = "https://github.com/RRethy/nvim-base16"
  },
  ["nvim-cmp"] = {
    loaded = true,
    path = "/Users/dan/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/Users/dan/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "/Users/dan/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-ufo"] = {
    loaded = true,
    path = "/Users/dan/.local/share/nvim/site/pack/packer/start/nvim-ufo",
    url = "https://github.com/kevinhwang91/nvim-ufo"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/Users/dan/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/Users/dan/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["promise-async"] = {
    loaded = true,
    path = "/Users/dan/.local/share/nvim/site/pack/packer/start/promise-async",
    url = "https://github.com/kevinhwang91/promise-async"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "/Users/dan/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ultisnips = {
    loaded = true,
    path = "/Users/dan/.local/share/nvim/site/pack/packer/start/ultisnips",
    url = "https://github.com/SirVer/ultisnips"
  },
  undotree = {
    loaded = true,
    path = "/Users/dan/.local/share/nvim/site/pack/packer/start/undotree",
    url = "https://github.com/mbbill/undotree"
  },
  ["vim-flake8"] = {
    loaded = true,
    path = "/Users/dan/.local/share/nvim/site/pack/packer/start/vim-flake8",
    url = "https://github.com/nvie/vim-flake8"
  },
  ["vim-fugitive"] = {
    loaded = true,
    path = "/Users/dan/.local/share/nvim/site/pack/packer/start/vim-fugitive",
    url = "https://github.com/tpope/vim-fugitive"
  },
  ["vim-gitgutter.git"] = {
    loaded = true,
    path = "/Users/dan/.local/share/nvim/site/pack/packer/start/vim-gitgutter.git",
    url = "https://github.com/airblade/vim-gitgutter"
  },
  ["vim-ripgrep"] = {
    loaded = true,
    path = "/Users/dan/.local/share/nvim/site/pack/packer/start/vim-ripgrep",
    url = "https://github.com/jremmen/vim-ripgrep"
  },
  ["vim-snippets"] = {
    loaded = true,
    path = "/Users/dan/.local/share/nvim/site/pack/packer/start/vim-snippets",
    url = "https://github.com/honza/vim-snippets"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: conform.nvim
time([[Config for conform.nvim]], true)
try_loadstring("\27LJ\2\nY\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\2\17lsp_fallback\2\15timeout_ms\3Ð\15\vformat\fconform\frequireó\4\1\0\6\0\29\0!6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\18\0005\3\4\0005\4\3\0=\4\5\0035\4\6\0=\4\a\0035\4\b\0=\4\t\0035\4\n\0=\4\v\0035\4\f\0=\4\r\0035\4\14\0=\4\15\0035\4\16\0=\4\17\3=\3\19\0025\3\20\0=\3\21\2B\0\2\0016\0\22\0009\0\23\0009\0\24\0005\2\25\0'\3\26\0003\4\27\0005\5\28\0B\0\5\1K\0\1\0\1\0\1\tdesc\vFormat\0\14<leader>p\1\3\0\0\6n\6v\bset\vkeymap\bvim\19format_on_save\1\0\2\17lsp_fallback\2\15timeout_ms\3Ð\15\21formatters_by_ft\1\0\2\19format_on_save\0\21formatters_by_ft\0\rmarkdown\1\3\0\0\14prettierd\rprettier\tyaml\1\3\0\0\14prettierd\rprettier\tjson\1\3\0\0\14prettierd\rprettier\20typescriptreact\1\3\0\0\14prettierd\rprettier\15typescript\1\3\0\0\14prettierd\rprettier\20javascriptreact\1\3\0\0\14prettierd\rprettier\15javascript\1\0\a\15typescript\0\20javascriptreact\0\tyaml\0\15javascript\0\rmarkdown\0\tjson\0\20typescriptreact\0\1\3\0\0\14prettierd\rprettier\nsetup\fconform\frequire\0", "config", "conform.nvim")
time([[Config for conform.nvim]], false)

_G._packer.inside_compile = false
if _G._packer.needs_bufread == true then
  vim.cmd("doautocmd BufRead")
end
_G._packer.needs_bufread = false

if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
