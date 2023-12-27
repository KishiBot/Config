return {
    'akinsho/toggleterm.nvim',
    version = "*",
    config = function ()
        require("toggleterm").setup {
            open_mapping = [[<c-\>]],
            size=20,
            hide_numbers = true,
            direction='horizontal'
        }
    end
}
