local key = vim.keymap.set
local opts = { noremap = true, silent = true }
local term_opts = { silent = true }

-- escape jj
key("i", "jj", "<ESC>", ops)

-- moving option
key("i", "<C-j>", "<DOWN>", ops)
key("i", "<C-k>", "<UP>", ops)
key("i", "<C-h>", "<LEFT>", ops)
key("i", "<C-l>", "<RIGHT>", ops)

key("i", "<A-j>", "<DOWN>", ops)
key("i", "<A-k>", "<UP>", ops)
key("i", "<A-h>", "<LEFT>", ops)
key("i", "<A-l>", "<RIGHT>", ops)


-- insert sapce
key("i", ",", ",<Space>", opts)

-- select all
key("n", "<C-a>", "gg<S-v>G", opts)

-- add indent
key("n", "<SPACE>ind", "gg=G", ops)

-- tab option
key("n", "te", ":tabedit", opts)
key("n", "gn", ":tabnew<Return>", opts)
key("n", "gh", "gT", opts)
key("n", "gl", "gt", opts)

-- window option 
key("n", "ss", ":split<Return><C-w>w", opts)
key("n", "sv", ":vsplit<Return><C-w>w", opts)

-- remove hilight
key("n", "<Esc><Esc>", ":<C-u>set nohlsearch<Return>", opts)

-- terminal option
key("n", "tt", ":belowright new<Return>:terminal<Return>:startinsert<Return>", opts)
key("t", "jj", "<C-\\><C-n>:q<Return>", opts)
key("t", "<ESC>", "<C-\\><C-n>:q<Return>", opts)
