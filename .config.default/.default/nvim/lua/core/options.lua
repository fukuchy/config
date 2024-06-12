local opt = vim.opt
local cmd = vim.cmd

-- line number 
opt.number = true

-- indent option 
opt.tabstop = 4
opt.shiftwidth = 4
opt.autoindent = true
opt.expandtab = true
opt.breakindent = true
opt.wrap = false

-- grep option
opt.ignorecase = true
opt.smartcase = true
opt.iskeyword:append("-")

-- visual option 
opt.termguicolors = true
opt.visualbell = true
opt.showtabline = 2
opt.relativenumber = true
-- cmd[[colorscheme desert]]

-- oparate option
opt.clipboard:append("unnamedplus")
opt.backspace = "indent,eol,start"

-- window option
opt.splitright = true
opt.splitbelow = true

--terminal option
cmd("au TermOpen * setlocal nonumber")
cmd("au TermOpen * resize 10")

-- file option
opt.swapfile = false 
opt.backup = false

-- command option
opt.cmdheight = 2
opt.laststatus = 2

-- language option
opt.helplang = 'ja', 'en'
