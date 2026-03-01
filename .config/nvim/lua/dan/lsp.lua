-- LSP (Neovim 0.11+)

-- Capabilities for nvim-cmp
local capabilities = vim.lsp.protocol.make_client_capabilities()
local ok_cmp, cmp_lsp = pcall(require, "cmp_nvim_lsp")
if ok_cmp then
    capabilities = cmp_lsp.default_capabilities(capabilities)
end

-- Mason
require("mason").setup()

require("mason-lspconfig").setup({
    -- IMPORTANT: tsserver -> ts_ls
    ensure_installed = { "pyright", "ts_ls", "rust_analyzer" },
    automatic_installation = true,
})

-- Define configs (provided by nvim-lspconfig) and enable them
vim.lsp.config("pyright", { capabilities = capabilities })
vim.lsp.config("ts_ls", { capabilities = capabilities })

vim.lsp.config("rust_analyzer", {
    capabilities = capabilities,
    settings = {
        ["rust-analyzer"] = {},
    },
})

vim.lsp.enable({ "pyright", "ts_ls", "rust_analyzer" })

-- Diagnostics keymaps
vim.keymap.set("n", "<space>e", vim.diagnostic.open_float)
vim.keymap.set("n", "[d", vim.diagnostic.goto_prev)
vim.keymap.set("n", "]d", vim.diagnostic.goto_next)
vim.keymap.set("n", "<space>q", vim.diagnostic.setloclist)

-- LspAttach mappings
vim.api.nvim_create_autocmd("LspAttach", {
    group = vim.api.nvim_create_augroup("UserLspConfig", {}),
    callback = function(ev)
        vim.bo[ev.buf].omnifunc = "v:lua.vim.lsp.omnifunc"
        local opts = { buffer = ev.buf }

        vim.keymap.set("n", "gD", vim.lsp.buf.declaration, opts)
        vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
        vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
        vim.keymap.set("n", "gi", vim.lsp.buf.implementation, opts)
        vim.keymap.set("n", "<C-k>", vim.lsp.buf.signature_help, opts)
        vim.keymap.set("n", "<space>wa", vim.lsp.buf.add_workspace_folder, opts)
        vim.keymap.set("n", "<space>wr", vim.lsp.buf.remove_workspace_folder, opts)
        vim.keymap.set("n", "<space>wl", function()
            print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
        end, opts)
        vim.keymap.set("n", "<space>D", vim.lsp.buf.type_definition, opts)
        vim.keymap.set("n", "<space>rn", vim.lsp.buf.rename, opts)
        vim.keymap.set({ "n", "v" }, "<space>ca", vim.lsp.buf.code_action, opts)
        vim.keymap.set("n", "gr", vim.lsp.buf.references, opts)
        vim.keymap.set("n", "<space>ff", function()
            vim.lsp.buf.format({ async = true })
        end, opts)
    end,
})
