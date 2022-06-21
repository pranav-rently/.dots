local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

-- Shorten function name
local keymap = vim.keymap.set

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- Normal --
-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- Toggle undotree
-- keymap("n", "<Space>u", ":UndotreeToggle<CR>", opts)

-- Navigate through tabs
-- keymap("n", "th", ":tabprev<CR>", opts)
-- keymap("n", "tl", ":tabnext<CR>", opts)
-- keymap("n", "tn", ":tabnew<CR>", opts)

-- Disable arrow keys
keymap("n", "<Up>", "<Nop>", opts)
keymap("n", "<Down>", "<Nop>", opts)
keymap("n", "<Left>", "<Nop>", opts)
keymap("n", "<Right>", "<Nop>", opts)

-- Resize with arrows
keymap("n", "<C-Up>", ":resize -2<CR>", opts)
keymap("n", "<C-Down>", ":resize +2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- Move text up and down
keymap("n", "<A-j>", "<Esc>:m .+1<CR>==gi", opts)
keymap("n", "<A-k>", "<Esc>:m .-2<CR>==gi", opts)

-- Visual --
-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Move text up and down
keymap("v", "<C-j>", ":m .+1<CR>==", opts)
keymap("v", "<C-k>", ":m .-2<CR>==", opts)
keymap("v", "p", '"_dP', opts)

-- Visual Block --
-- Move text up and down
keymap("x", "J", ":move '>+1<CR>gv-gv", opts)
keymap("x", "K", ":move '<-2<CR>gv-gv", opts)
keymap("x", "<C-j>", ":move '>+1<CR>gv-gv", opts)
keymap("x", "<C-k>", ":move '<-2<CR>gv-gv", opts)

-- Terminal --
-- Better terminal navigation
-- keymap("t", "<C-h>", "<C-\\><C-N><C-w>h", term_opts)
-- keymap("t", "<C-j>", "<C-\\><C-N><C-w>j", term_opts)
-- keymap("t", "<C-k>", "<C-\\><C-N><C-w>k", term_opts)
-- keymap("t", "<C-l>", "<C-\\><C-N><C-w>l", term_opts)
-- keymap("t", "<Esc>", "<C-\\><C-n>", term_opts)


-- " Copying to clipboard
-- nnoremap <leader>y "+y
-- vnoremap <leader>y "+y
-- nnoremap <leader>Y gg"+yG

-- xnoremap <leader>p "_dP

-- nnoremap <leader>d "_d
-- vnoremap <leader>d "_d

-- nnoremap <leader>pv :wincmd v<bar> :Ex <bar> :vertical resize 30<CR>

-- " Easier Moving between splits
-- nnoremap <C-J> <C-W><C-J>
-- nnoremap <C-K> <C-W><C-K>
-- nnoremap <C-L> <C-W><C-L>
-- nnoremap <C-H> <C-W><C-H>

-- " Keep the cursor centered
-- nnoremap n nzzzv
-- nnoremap N Nzzzv
-- nnoremap J mzJ`z

-- " Undo break points
-- inoremap , ,<c-g>u
-- inoremap . .<c-g>u
-- inoremap ! !<c-g>u
-- inoremap ? ?<c-g>u

-- " Jumplist mutations
-- nnoremap <expr> k (v:count > 5 ? "m'" . v:count : "") . 'k'
-- nnoremap <expr> j (v:count > 5 ? "m'" . v:count : "") . 'j'

-- nnoremap <leader><CR> :source $MYVIMRC<CR>

-- TODO: Do this in Lua
vim.cmd [[ 
  let g:netrw_browse_split = 0
  let g:netrw_banner = 0
  let g:netrw_winsize = 25
  let g:netrw_localrmdir = 'rm -r'
]]
