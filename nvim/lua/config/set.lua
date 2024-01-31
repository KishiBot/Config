vim.cmd[[ hi Normal guibg=NONE ctermbg=NONE ]]

-- Set the conceal character to ~
vim.o.conceallevel = 2
vim.o.concealcursor = "nvic"

vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.scrolloff = 6
vim.opt.updatetime = 750

-- Wraping
vim.opt.wrap = true
vim.opt.linebreak = true

-- Diagnostic
vim.diagnostic.config({
    virtual_text = {
        format = function ()
            return string.format("")
        end
    },
    signs = false,
    update_in_insert = true,
    underline = true,
    severity_sort = false,
    float = true
})
