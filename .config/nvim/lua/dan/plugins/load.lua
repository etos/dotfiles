return require("packer").startup(function(use)
	use("wbthomason/packer.nvim")
	-- Colorscheme
	use("gruvbox-community/gruvbox")
	use("folke/tokyonight.nvim")
	-- formatting
	use("sbdchd/neoformat")
	use("scrooloose/nerdcommenter")
	-- Code
	use("nvie/vim-flake8")
    use("dense-analysis/ale")
    use("fannheyward/coc-pyright")
	-- Search / Grep
	use("jremmen/vim-ripgrep")
    use("junegunn/fzf.vim")
	-- Git
	use("airblade/vim-gitgutter")
    -- Nav
    use("ThePrimeagen/harpoon")
	use("scrooloose/nerdtree")
    -- Snippets
    use("SirVer/ultisnips")
    use("honza/vim-snippets")
    -- Undo
    use("mbbill/undotree")
	-- Other
    use("nvim-lua/plenary.nvim")
    use("wfxr/minimap.vim")
	use("tpope/vim-fugitive")
	use("vim-airline/vim-airline")
	use("ctrlpvim/ctrlp.vim")
	--use'ycm-core/YouCompleteMe'
	use("davidhalter/jedi-vim")
	--use'pappasam/coc-jedi', { 'do': 'yarn install --frozen-lockfile && yarn build', 'branch': 'main' }
        --use'prettier/vim-prettier', {
  	--\ 'do': 'yarn install --frozen-lockfile --production',
  	--\ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'svelte', 'yaml', 'html'] }
end) 
