return {
	"tpope/vim-fugitive",
    config = function()

        -- set keymaps
        vim.keymap.set("n", "<leader>gs", vim.cmd.Git);

    end
}
