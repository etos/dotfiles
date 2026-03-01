-- LSP without lsp-zero (Neovim 0.11+)

-- ===== nvim-cmp =====
local cmp = require("cmp")
local cmp_select = { behavior = cmp.SelectBehavior.Select }

cmp.setup({
    mapping = {
        ["<C-p>"] = cmp.mapping.select_prev_item(cmp_select),
        ["<C-n>"] = cmp.mapping.select_next_item(cmp_select),
        ["<C-y>"] = cmp.mapping.confirm({ select = true }),
        ["<C-Space>"] = cmp.mapping.complete(),

        -- You had Tab / S-Tab disabled via lsp-zero defaults
        ["<Tab>"] = nil,
        ["<S-Tab>"] = nil,
    },
})

-- Capabilities for completion
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require("cmp_nvim_lsp").default_capabilities(capabilities)

-- ===== Mason =====
require("mason").setup()

require("mason-lspconfig").setup({
    ensure_installed = {
        "ts_ls", -- IMPORTANT: tsserver -> ts_ls
        "rust_analyzer",
        "lua_ls",
    },
    automatic_installation = true,
})

-- ===== LSP server configs (0.11+) =====
vim.lsp.config("ts_ls", {
    capabilities = capabilities,
})

vim.lsp.config("rust_analyzer", {
    capabilities = capabilities,
    settings = {
        ["rust-analyzer"] = {},
    },
})

vim.lsp.config("lua_ls", {
    capabilities = capabilities,

    root_dir = function(arg)
        local util = require("lspconfig.util")
        local nvim_config = vim.fn.stdpath("config")
        local home = vim.loop.os_homedir()

        -- 0.11 may pass bufnr
        local fname = arg
        if type(fname) == "number" then
            fname = vim.api.nvim_buf_get_name(fname)
        end

        -- If we're editing inside ~/.config/nvim, always use that as root
        if type(fname) == "string" and fname ~= "" and fname:sub(1, #nvim_config) == nvim_config then
            return nvim_config
        end

        -- If no filename yet, fall back to cwd (helps on startup)
        if type(fname) ~= "string" or fname == "" then
            local cwd = vim.loop.cwd()
            if cwd and cwd:sub(1, #nvim_config) == nvim_config then
                return nvim_config
            end
            return nil
        end

        -- Only "real" project markers (NO "lua" marker)
        local root = util.root_pattern(".git", ".luarc.json", ".luarc.jsonc")(fname)
        if not root or root == home or root == "/" then
            return nil
        end

        return root
    end,

    settings = {
        Lua = {
            diagnostics = { globals = { "vim" } },
        },
    },
})


-- Enable the servers
vim.lsp.enable({ "ts_ls", "rust_analyzer", "lua_ls" })

-- ===== Keymaps on attach =====
vim.api.nvim_create_autocmd("LspAttach", {
    group = vim.api.nvim_create_augroup("UserLspConfig", { clear = true }),
    callback = function(ev)
        local opts = { buffer = ev.buf, remap = false }

        vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
        vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
        vim.keymap.set("n", "<leader>vws", vim.lsp.buf.workspace_symbol, opts)
        vim.keymap.set("n", "<leader>vd", vim.diagnostic.open_float, opts)

        -- NOTE: your original had next/prev swapped; this matches what you had:
        vim.keymap.set("n", "[d", vim.diagnostic.goto_next, opts)
        vim.keymap.set("n", "]d", vim.diagnostic.goto_prev, opts)

        vim.keymap.set("n", "<leader>vca", vim.lsp.buf.code_action, opts)
        vim.keymap.set("n", "<leader>vrr", vim.lsp.buf.references, opts)
        vim.keymap.set("n", "<leader>vrn", vim.lsp.buf.rename, opts)
        vim.keymap.set("i", "<C-h>", vim.lsp.buf.signature_help, opts)
    end,
})

-- ===== Diagnostics =====
vim.diagnostic.config({
    virtual_text = true,
})
