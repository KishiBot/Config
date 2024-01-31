return {
    "neovim/nvim-lspconfig",
    event = {"BufReadPre", "BufNewFile"},
    dependencies = {
		'hrsh7th/cmp-nvim-lsp',
    },
    config = function()
        local lspconfig = require("lspconfig")
        local cmp_nvim_lsp = require("cmp_nvim_lsp")

        vim.api.nvim_create_autocmd('LspAttach', {
            group = vim.api.nvim_create_augroup('UserLspConfig', {}),
            callback = function(ev)
                -- Enable completion triggered by <c-x><c-o>
                vim.bo[ev.buf].omnifunc = 'v:lua.vim.lsp.omnifunc'
                local opts = { noremap = true, silent = true }

                -- Keymaps
                vim.keymap.set("n", "gD", function() vim.lsp.buf.declaration() end, opts)
                vim.keymap.set("n", "gd", "<cmd>Telescope lsp_definitions<CR>", opts)
                vim.keymap.set("n", "gi", "<cmd>Telescope lsp_implementations<CR>", opts)
                vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
                vim.keymap.set("n", "<leader>vws", function() vim.lsp.buf.workspace_symbol() end, opts)
                vim.keymap.set("n", "<leader>vd", function() vim.diagnostic.open_float() end, opts)
                vim.keymap.set("n", "[d", function() vim.diagnostic.goto_next() end, opts)
                vim.keymap.set("n", "]d", function() vim.diagnostic.goto_prev() end, opts)
                vim.keymap.set("n", "<leader>vca", function() vim.lsp.buf.code_action() end, opts)
                vim.keymap.set("n", "<leader>vrr", function() vim.lsp.buf.references() end, opts)
                vim.keymap.set("n", "<leader>rn", function() vim.lsp.buf.rename() end, opts)
                vim.keymap.set("i", "<C-h>", function() vim.lsp.buf.signature_help() end, opts)
                vim.keymap.set("n", "<leader>rs", ":LspRestart<CR>", opts)
            end
        })
        local capabilities = cmp_nvim_lsp.default_capabilities()

        -- C and C++ setup
        lspconfig.clangd.setup {
            capabilities = capabilities,
        }
        -- Lua setup
        lspconfig.lua_ls.setup {
            capabilities = capabilities,
            settings = {
                Lua = {
                    diagnostics = {
                        globals = {"vim"}
                    }
                }
            },
        }

        -- Python setup
        lspconfig.pyright.setup {
            capabilities = capabilities,
            cmd = { "pyright-langserver", "--stdio" },
            filetypes = { "python" },
            settings = {
                pyright = {
                    autoImportCompletion = true
                },
                python = {
                    analysis = {
                        extraPaths = {".", "duh"},
                        autoSearchPaths = true,
                        diagnosticMode = "openFilesOnly",
                        useLibraryCodeForTypes = true,
                        typeCheckingMode = "off",
                    }
                }
            }
        }
    end
}
