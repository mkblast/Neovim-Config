-----------------------------------------------------------
-- Keymaps configuration file: keymaps of neovim
-- and plugins.
-----------------------------------------------------------

local map = vim.keymap.set
local default_opts = {noremap = true, silent = true}

-----------------------------------------------------------
-- Neovim shortcuts:
-----------------------------------------------------------

-- some remaps
map('n', 'gh', 'v0', default_opts)
map('n', 'gl', 'v$', default_opts)

-- clear search highlighting
map('n', '<leader>h', ':nohl<CR>', default_opts)

-- don't use arrow keys
map('', '<up>', '<nop>', {noremap = true})
map('', '<down>', '<nop>', {noremap = true})
map('', '<left>', '<nop>', {noremap = true})
map('', '<right>', '<nop>', {noremap = true})

-- fast saving with <leader> and s
map('n', '<leader>s', ':w<CR>', default_opts)
map('n', '<leader>q', ':q<CR>', default_opts)
map('n', '<leader>Q', ':qa<CR>', default_opts)

-- move around splits using Ctrl + {h,j,k,l}
map('n', '<C-h>', '<C-w>h', default_opts)
map('n', '<C-j>', '<C-w>j', default_opts)
map('n', '<C-k>', '<C-w>k', default_opts)
map('n', '<C-l>', '<C-w>l', default_opts)
-- windows control
map('n', '<leader>ws', ':split<CR>', default_opts)
map('n', '<leader>wv', ':vsplit<CR>', default_opts)
map('n', '<leader>wf', ':split<CR>', default_opts)
map('n', '<leader>wc', ':close<CR>', default_opts)
map('n', '<leader>wo', ':on<CR>', default_opts)
map('n', '<leader>wh', ':hide<CR>', default_opts)

-- buffer control
map('n', '<leader>bd', ':bdelete!<CR>', {noremap = true})
map('n', '<leader>bs', ':w<CR>:bdelete<CR>', {noremap = true})
map('n', '<leader>j', '<c-^>', {noremap = true})
map('n', '<TAB>', ':bnext<CR>', {noremap = true})
map('n', '<S-TAB>', ':bprevious<CR>', {noremap = true})

-- Trouble
map("n", "<leader>xx", "<cmd>TroubleToggle<cr>",
  {silent = true, noremap = true}
)
map("n", "<leader>xw", "<cmd>TroubleToggle workspace_diagnostics<cr>",
  {silent = true, noremap = true}
)
map("n", "<leader>xd", "<cmd>TroubleToggle document_diagnostics<cr>",
  {silent = true, noremap = true}
)
map("n", "<leader>xl", "<cmd>TroubleToggle loclist<cr>",
  {silent = true, noremap = true}
)
map("n", "<leader>xq", "<cmd>TroubleToggle quickfix<cr>",
  {silent = true, noremap = true}
)
map("n", "gR", "<cmd>TroubleToggle lsp_references<cr>",
  {silent = true, noremap = true}
)

-- Movment remaps
map("v", "J", ":m '>+1<CR>gv=gv")
map("v", "K", ":m '<-2<CR>gv=gv")

map("n", "J", "mzJ`z")
map("n", "<C-d>", "<C-d>zz")
map("n", "<C-u>", "<C-u>zz")
map("n", "n", "nzzzv")
map("n", "N", "Nzzzv")


-- Clipboard remaps
map("x", "<leader>P", [["_dP]])
map({"n", "v"}, "<leader>p", [["+p]])
map({"n", "v"}, "<leader>y", [["+y]])
map("n", "<leader>Y", [["+Y]])


map({"n", "v"}, "<leader>d", [["_d]])

-----------------------------------------------------------
-- Applications & Plugins shortcuts:
-----------------------------------------------------------
-- nvim-tree
map('n', '<C-n>', ':NvimTreeToggle<CR>', default_opts)       -- open/close
map('n', '<leader>R', ':NvimTreeRefresh<CR>', default_opts)  -- refresh
map('n', '<leader>n', ':NvimTreeFindFile<CR>', default_opts) -- search file

-- Vista tag-viewer
map('n', '<C-m>', ':Vista!!<CR>', default_opts)   -- open/close
