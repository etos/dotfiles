return require("packer").startup(function(use)
    use("wbthomason/packer.nvim")

    -- Colorscheme
    use("gruvbox-community/gruvbox")
    use("RRethy/nvim-base16")

    -- Code
    use("nvim-lua/plenary.nvim")
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

    -- Git
    use("airblade/vim-gitgutter")
    use("tpope/vim-fugitive")

    -- Minimap
    use("wfxr/minimap.vim")

    -- Nav
    use("ThePrimeagen/harpoon")
    use("scrooloose/nerdtree")

    -- Search / Grep
    use("jremmen/vim-ripgrep")
    use("junegunn/fzf.vim")
    use("ggandor/leap.nvim")

    -- Status line
    use("nvim-lualine/lualine.nvim")

    -- Snippets
    use("SirVer/ultisnips")
    use("honza/vim-snippets")

    -- Undo
    use("mbbill/undotree")
end) 
