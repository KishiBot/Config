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

        mason_config.setup ({
            ensure_installed = {
                "lua_ls",
                "rust_analyzer",
                "clangd",
                "pylsp",
                "pyright",
                "glsl_analyzer"
            },
            automatic_installation = true,
            handlers = {
                function (server_name)
                    require("lspconfig")[server_name].setup {}
                end
            }
            -- handlers = {
            --     lspconfig.rust_analyzer.setup {
            --         capabilities = capabilities,
            --         settings = {
            --             ['rust-analyzer'] = {
            --                 diagnostics = {
            --                     enable = false;
            --                 }
            --             }
            --         }
            --     }
            -- }
        })
    end
}
