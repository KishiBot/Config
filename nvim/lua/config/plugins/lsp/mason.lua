return {
    "williamboman/mason.nvim",
    dependencies = {
    "williamboman/mason-lspconfig.nvim",
    },
    config = function()
        local mason = require("mason")
        local mason_config = require("mason-lspconfig")

        mason.setup({
            ui = {
                icons = {
                    package_installed = "✓",
                    package_pending = "➜",
                    package_uninstalled = "✗"
                }
            }
        })

        mason_config.setup {
            ensure_installed = {
                "lua_ls",
                "rust_analyzer",
                "clangd",
                "pyright"
            },
            automatic_installation = true,
        }
    end
}
