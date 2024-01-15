vim.opt.backup = false
vim.opt.swapfile = false
vim.opt.undofile = true
-- if a file is being edited by another program (or was written to file while editing with another program), it is not allowed to be edited
vim.opt.writebackup = false

vim.opt.fileencoding = "utf-8"

vim.opt.cmdheight = 1
vim.opt.conceallevel = 0
vim.opt.termguicolors = true

vim.opt.completeopt = { "menuone", "noselect" }

vim.opt.hlsearch = false
vim.opt.incsearch = true
vim.opt.ignorecase = true

vim.opt.mouse = ""

-- allows neovim to access the system clipboard
vim.opt.clipboard = "unnamedplus"

vim.opt.smartcase = true
vim.opt.smartindent = true

vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.softtabstop = 4

vim.opt.splitbelow = true
vim.opt.splitright = true

-- needed for which-key to function
vim.opt.timeout = true
-- time to wait for a mapped sequence to complete (in milliseconds)
vim.opt.timeoutlen = 300
-- faster completion (4000ms default)
vim.opt.updatetime = 50

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.numberwidth = 4
-- always show the sign column, otherwise it would shift the text each time
vim.opt.signcolumn = "auto"

-- display lines as one long line
vim.opt.wrap = false

vim.opt.scrolloff = 4
vim.opt.sidescrolloff = 8

vim.opt.cursorline = false
vim.opt.colorcolumn = "80"

vim.opt.guifont = "monospace:h18" -- the font used in graphical neovim applications

vim.opt.shortmess:append("c")

vim.cmd("set whichwrap+=<,>,[,],h,l")
vim.cmd([[set iskeyword+=-]])
vim.cmd([[set formatoptions-=cro]]) -- TODO: this doesn't seem to work
