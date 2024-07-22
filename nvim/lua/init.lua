vim.opt.tabstop = 2
vim.opt.cindent = true
vim.opt.expandtab = true
vim.opt.shiftwidth = 2
vim.opt.number = true
vim.opt.ruler = true
vim.opt.display = "lastline"
vim.opt.pumheight = 10
vim.opt.incsearch = true
vim.opt.hlsearch = true
vim.opt.wrap = true
vim.opt.showmatch = true
vim.opt.matchtime = 1
vim.opt.whichwrap:append("h,l")
vim.opt.wrapscan = true
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.hidden = true
vim.opt.history = 2000
vim.opt.showmode = true
vim.opt.showcmd = true
vim.opt.backup = false
vim.opt.swapfile = false
vim.opt.autoread = true
vim.cmd('syntax on')

vim.api.nvim_create_autocmd("ColorScheme", {
    pattern = "*",
    callback = function()
        vim.api.nvim_set_hl(0, "LineNr", { ctermfg = 255 })
    end,
})

vim.cmd('colorscheme industry')

vim.api.nvim_set_keymap('n', '<ESC><ESC>', ':nohl<CR>', { noremap = true, silent = true })

-- Escape from insert mode with jj and kk
vim.api.nvim_set_keymap('i', 'jj', '<ESC>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', 'kk', '<ESC>', { noremap = true, silent = true })

-- Cursor moving in insert mode
vim.api.nvim_set_keymap('i', '<C-j>', '<Down>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '<C-k>', '<Up>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '<C-h>', '<Left>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '<C-l>', '<Right>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '<C-a>', '<ESC>I', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '<C-e>', '<ESC>A', { noremap = true, silent = true })

-- Map <Esc> to <C-\><C-n> in terminal mode
vim.api.nvim_set_keymap('t', '<Esc>', '<C-\\><C-n>', { noremap = true, silent = true })


print("hello")
