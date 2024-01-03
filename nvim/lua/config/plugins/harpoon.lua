return {
    "ThePrimeagen/harpoon",
    config= function ()
        local ui = require("harpoon.ui")
        local mark = require("harpoon.mark")

        vim.keymap.set("n", "<leader>ho", function() ui.toggle_quick_menu() end, {noremap=true})
        vim.keymap.set("n", "<leader>ha", function() mark.add_file() end, {noremap=true})

        vim.keymap.set("n", "<leader>h1", function() ui.nav_file(1) end, {noremap=true})
        vim.keymap.set("n", "<leader>h2", function() ui.nav_file(2) end, {noremap=true})
        vim.keymap.set("n", "<leader>h3", function() ui.nav_file(3) end, {noremap=true})
        vim.keymap.set("n", "<leader>h4", function() ui.nav_file(4) end, {noremap=true})
    end
}
