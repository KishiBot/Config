return {
    'stevearc/oil.nvim',
    opts = {},
    -- Optional dependencies
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function ()
        require("oil").setup({
            use_default_keymaps = false,
            keymaps = {
                ["<CR>"] = "actions.select",
                ["<C-p>"] = "actions.preview",
                ["<leader>-"] = "actions.close",
                ["<C-k>"] = "actions.parent",
                ["<C-j>"] = "actions.tcd",
                ["g."] = "actions.toggle_hidden",
                ["gs"] = "actions.change_sort",
                ["<C-l>"] = "actions.refresh",
            },
        })

        -- Oil
        vim.keymap.set("n", "<leader>-", "<CMD>Oil<CR>", { desc = "Open parent directory" })
    end
}
