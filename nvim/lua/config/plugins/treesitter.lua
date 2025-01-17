return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function ()
        local configs = require("nvim-treesitter.configs")

        configs.setup({
            ensure_installed = { "c", "cpp", "python", "lua", "java", "vim", "vimdoc", "query", "elixir", "heex", "javascript", "html", "odin", "glsl", "go"},
            sync_install = false,
            highlight = { enable = true, additional_vim_regex_highlighting = false, },
            indent = { enable = true },
        })
    end
}
