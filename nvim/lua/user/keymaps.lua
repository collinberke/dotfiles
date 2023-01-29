local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

-- Simplify with a keymap function
local keymap = vim.api.nvim_set_keymap

-- Leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", opts) 
keymap("n", "<C-j>", "<C-w>j", opts) 
keymap("n", "<C-k>", "<C-w>k", opts) 
keymap("n", "<C-l>", "<C-w>l", opts) 
keymap("t", "<C-h>", "<C-\\><C-n><C-w>h", opts) 
keymap("t", "<C-j>", "<C-\\><C-n><C-w>j", opts) 
keymap("t", "<C-k>", "<C-\\><C-n><C-w>k", opts) 
keymap("t", "<C-l>", "<C-\\><C-n><C-w>l", opts) 

-- Easier navigation window opening
keymap("n", "<leader>e", ":Lex 30<cr>", opts)

-- Easier insert mode editing
keymap("i", "jj", "<Esc>", opts)
keymap("t", "jj", "<C-\\><C-n>", opts)

-- Run previous command
keymap("n", "<C-p>", "@:", opts)

-- BigQuery convenience commands
keymap("n", "<C-b>", ":w | :! bq query < % --format pretty <CR>", opts)

-- R coding keymappings
keymap("n", "\\M", "|>", opts)
keymap("i", "\\M", "|>", opts)
keymap("n", "<leader>ts", ":RStop<cr>", opts)
keymap("n", "tt", "<Esc><C-w><C-w>i", opts)

-- R devtools keymappings
keymap("n", "<leader>I", ":RInstallPackage<Esc>", opts)
keymap("n", "<leader>L", ":RLoadPackage<Esc>", opts)
keymap("n", "<leader>B", ":RBuildPackage<Esc>", opts)
keymap("n", "<leader>E", ":RCheckPackage<Esc>", opts)
keymap("n", "<leader>T", ":RTestPackage<Esc>", opts)
keymap("n", "<leader>D", ":RDocumentPackage<Esc>", opts)

-- Telescope keymappin
keymap("n", "<leader>f", "<cmd>Telescope find_files<cr>", opts)
keymap("n", "<c-t>", "<cmd>Telescope live_grep<cr>", opts)

-- Debug keymappings
keymap("n", "<leader>b", ":toggle_breakpoint()<CR>", opts)
keymap("n", "<leader>B", ":set_breakpoint()<CR>", opts)

-- Source file
keymap("n", "<leader><leader>x", ":source %<CR>", opts)
