return {
    'mfussenegger/nvim-jdtls',
    lazy = true,
    config = function ()
        require("jdtls").start_or_attach({
            cmd={
                vim.fn.expand("~/.local/share/nvim/mason/bin/jdtls"),

                '-Declipse.application=org.eclipse.jdt.ls.core.id1',
                '-Dosgi.bundles.defaultStartLevel=4',
                '-Declipse.product=org.eclipse.jdt.ls.core.product',
                '-Dlog.protocol=true',
                '-Dlog.level=ALL',
                '-Xmx1g',
                '--add-modules=ALL-SYSTEM',
                '--add-opens',
                'java.base/java.util=ALL-UNNAMED',
                '--add-opens',
                'java.base/java.lang=ALL-UNNAMED',
                '-jar', vim.fn.expand('~/.local/share/nvim/mason/packages/jdtls/plugins/org.eclipse.equinox.launcher_1.6.700.v20231214-2017.jar'),

                '-configuration', vim.fn.expand('~/.local/share/nvim/mason/packages/jdtls/config_linux'),
                '-data', vim.fn.expand('~/.cache/jdtls/workspace/folder') .. vim.fn.fnamemodify(vim.fn.getcwd(), ':t')
            },
            root_dir = require("jdtls.setup").find_root({"gralde", ".git", "mvnw"}),
            capabilities = require('cmp_nvim_lsp').default_capabilities(),
            settings = {
                java = {},
            },
            init_options = {
                bundles = {},
            },
        })
    end
}
