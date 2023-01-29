-- :help options for more info about options
vim.opt.backup = false            -- creates a backup file
vim.opt.clipboard = "unnamedplus" -- allows neovim to access the system clipboard
vim.opt.cmdheight = 2             -- more space in the neovim command line for displaying messages
vim.opt.conceallevel = 0          -- so that `` is visible in markdown files
vim.opt.fileencoding = "utf-8"    -- the encoding written to a file
vim.opt.mouse = "a"               -- allow the mouse to be used in neovim
vim.opt.showtabline = 2           -- always show tabs
vim.opt.smartindent = true        -- make indenting smarter again
vim.opt.updatetime = 300          -- faster completion
vim.opt.expandtab = true          -- convert tabs to spaces
vim.opt.shiftwidth = 2            -- the number of spaces inserted for each indentation
vim.opt.tabstop = 3               -- insert 3 spaces for a tab
vim.opt.number = true             -- set numbered lines
vim.opt.relativenumber = true     -- set numbered lines relative
vim.opt.wrap = true               -- wrap text
vim.opt.formatoptions = "r"       -- continue comment lines when hitting return
vim.opt.termguicolors = true      -- set terminal gui colors

-- R configuration
vim.g.R_assign = 2                -- overwrite the `_` <- keybinding for nvim-r

-- Automatically disable search highlighting
local ns = vim.api.nvim_create_namespace('toggle_hlsearch')

local function toggle_hlsearch(char)
  if vim.fn.mode() == 'n' then
    local keys = { '<CR>', 'n', 'N', '*', '#', '?', '/' }
    local new_hlsearch = vim.tbl_contains(keys, vim.fn.keytrans(char))

    if vim.opt.hlsearch:get() ~= new_hlsearch then
      vim.opt.hlsearch = new_hlsearch
    end
  end
end

vim.on_key(toggle_hlsearch, ns)

-- Auto jump to last place when file closed
vim.api.nvim_create_autocmd('BufReadPost', {
  callback = function()
    local mark = vim.api.nvim_buf_get_mark(0, '"')
    local lcount = vim.api.nvim_buf_line_count(0)
    if mark[1] > 0 and mark[1] <= lcount then
      pcall(vim.api.nvim_win_set_cursor, 0, mark)
    end
  end,
})

