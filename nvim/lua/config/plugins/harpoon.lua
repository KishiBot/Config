return {
    "ThePrimeagen/harpoon",
    config= function ()
        local ui = require("harpoon.ui")
        local mark = require("harpoon.mark")

        vim.keymap.set("n", "<leader>ho", function() ui.toggle_quick_menu() end, {noremap=true})
        vim.keymap.set("n", "<leader>ha", function() mark.add_file() end, {noremap=true})

        vim.keymap.set("n", "<leader>ha", function() ui.nav_file(1) end, {noremap=true})
        vim.keymap.set("n", "<leader>hs", function() ui.nav_file(2) end, {noremap=true})
        vim.keymap.set("n", "<leader>hd", function() ui.nav_file(3) end, {noremap=true})
        vim.keymap.set("n", "<leader>hf", function() ui.nav_file(4) end, {noremap=true})
    end
}
