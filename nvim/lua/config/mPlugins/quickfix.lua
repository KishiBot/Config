vim.keymap.set("n", "<C-n>", ":cnext<CR>")
vim.keymap.set("n", "<C-m>", ":cprev<CR>")

function CheckQuickfix ()
    local quickfix_win_id = vim.fn.getqflist({winid = true}).winid
    if vim.fn.win_gettype(quickfix_win_id) == 'quickfix' then
        vim.cmd("cclose")
    else
        vim.cmd("copen")
    end
end
vim.keymap.set("n", "<leader>co", function() CheckQuickfix() end, {noremap=true, silent=true})
