return require("packer").startup(function(use)
    use("wbthomason/packer.nvim")

    -- Colorscheme
    use("gruvbox-community/gruvbox")
    use("RRethy/nvim-base16")

    -- Code
    --use("nvim-lua/plenary.nvim")
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.0',
        -- or   , branch = '0.1.x',
        requires = { { 'nvim-lua/plenary.nvim' } }
    }
    use("nvie/vim-flake8")
    use("dense-analysis/ale")
    use("fannheyward/coc-pyright")
    use("davidhalter/jedi-vim")
    use("nvim-treesitter/nvim-treesitter", {
        run = ":TSUpdate"
    })

    -- Formatting
    use("sbdchd/neoformat")
    use("scrooloose/nerdcommenter")

    -- Code Folding
    use { 'kevinhwang91/nvim-ufo', requires = 'kevinhwang91/promise-async' }

    -- LSP
    use { "neovim/nvim-lspconfig" }
    use { "mason-org/mason.nvim" }
    use { "williamboman/mason-lspconfig.nvim" }

    -- Completion
    use { "hrsh7th/nvim-cmp" }
    use { "hrsh7th/cmp-nvim-lsp" }
    use { "hrsh7th/cmp-buffer" }
    use { "hrsh7th/cmp-path" }

    -- Optional snippets (only if you want snippet expansion)
    use { "L3MON4D3/LuaSnip" }
    use { "saadparwaiz1/cmp_luasnip" }
    use { "rafamadriz/friendly-snippets" }

    -- Formatting (instead of null-ls)
    --use "williamboman/mason.nvim"
    --use "williamboman/mason-lspconfig.nvim"
    --use("neovim/nvim-lspconfig")
    --[[    use {]]
    --[['VonHeikemen/lsp-zero.nvim',]]
    --[[branch = 'v1.x',]]
    --[[requires = {]]
    --[[-- LSP Support]]
    --[[{'neovim/nvim-lspconfig'},]]
    --[[{'williamboman/mason.nvim'},]]
    --[[{'williamboman/mason-lspconfig.nvim'},]]

    --[[-- Autocompletion]]
    --[[{'hrsh7th/nvim-cmp'},]]
    --[[{'hrsh7th/cmp-buffer'},]]
    --[[{'hrsh7th/cmp-path'},]]
    --[[{'saadparwaiz1/cmp_luasnip'},]]
    --[[{'hrsh7th/cmp-nvim-lsp'},]]
    --[[{'hrsh7th/cmp-nvim-lua'},]]

    --[[-- Snippets]]
    --[[{'L3MON4D3/LuaSnip'},]]
    --[[{'rafamadriz/friendly-snippets'},]]
    --[[}]]
    --[[    }]]

    -- Prettier
    --use("jose-elias-alvarez/null-ls.nvim")
    use {
        "nvimtools/none-ls.nvim",
        requires = { "nvim-lua/plenary.nvim" },
    }
    use {
        "stevearc/conform.nvim",
        config = function()
            require("conform").setup({
                formatters_by_ft = {
                    javascript = { "prettierd", "prettier" },
                    javascriptreact = { "prettierd", "prettier" },
                    typescript = { "prettierd", "prettier" },
                    typescriptreact = { "prettierd", "prettier" },
                    json = { "prettierd", "prettier" },
                    yaml = { "prettierd", "prettier" },
                    markdown = { "prettierd", "prettier" },
                },
                format_on_save = { timeout_ms = 2000, lsp_fallback = true },
            })

            vim.keymap.set({ "n", "v" }, "<leader>p", function()
                require("conform").format({ lsp_fallback = true, timeout_ms = 2000 })
            end, { desc = "Format" })
        end,
    }
    --use("MunifTanjim/prettier.nvim")

    -- Git
    use("https://github.com/airblade/vim-gitgutter.git")
    use("tpope/vim-fugitive")

    -- Minimap
    use("wfxr/minimap.vim")

    -- Nav
    use("ThePrimeagen/harpoon")
    use("scrooloose/nerdtree")

    -- Search / Grep
    use("jremmen/vim-ripgrep")
    use("junegunn/fzf.vim")
    use { "https://codeberg.org/andyg/leap.nvim" }

    -- Status line
    use("nvim-lualine/lualine.nvim")

    -- Snippets
    use("SirVer/ultisnips")
    use("honza/vim-snippets")

    -- Undo
    use("mbbill/undotree")
end)
