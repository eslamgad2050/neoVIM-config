local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

-- shorten function name
local keymap = vim.api.nvim_set_keymap

--remap space as leader key
keymap("", "<space>", "<nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- normal --
-- better window navigation
keymap("n", "<c-h>", "<c-w>h", opts)
keymap("n", "<c-j>", "<c-w>j", opts)
keymap("n", "<c-k>", "<c-w>k", opts)
keymap("n", "<c-l>", "<c-w>l", opts)

-- resize with arrows
keymap("n", "<c-up>", ":resize -2<cr>", opts)
keymap("n", "<c-down>", ":resize +2<cr>", opts)
keymap("n", "<c-left>", ":vertical resize -2<cr>", opts)
keymap("n", "<c-right>", ":vertical resize +2<cr>", opts)

-- navigate buffers
keymap("n", "<s-l>", ":bnext<cr>", opts)
keymap("n", "<s-h>", ":bprevious<cr>", opts)

-- move text up and down
keymap("n", "<a-j>", "<esc>:m .+1<cr>==", opts)
keymap("n", "<a-k>", "<esc>:m .-2<cr>==", opts)

-- insert --
-- press jk fast to exit insert mode
keymap("i", "jk", "<esc>", opts)

-- visual --
-- stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

keymap("v", "{{", '"2c{}<Esc>"2P', opts)
keymap("v", "[[", '"2c[]<Esc>"2P', opts)
keymap("v", "((", '"2c()<Esc>"2P', opts)
keymap("v", "''", "\"2c''<Esc>\"2P", opts)
keymap("v", '""', '"2c""<Esc>"2P', opts)

-- cd
keymap("n", "cd", ":lcd %:p:h<CR>:pwd<CR>", opts)

--format
keymap("i", "<C-z>", "<ESC> :u<CR>", opts)
keymap("n", "<C-z>", ":u<CR>", opts)

keymap("i", "<C-A-l>", "<ESC> :lua vim.lsp.buf.format()<CR>", opts)
keymap("n", "<C-A-l>", " :lua vim.lsp.buf.format()<CR>", opts)

--save
keymap("i", "<C-s>", "<ESC> :w<CR>", opts)
keymap("n", "<C-s>", " :w<CR>", opts)

--compile
keymap("n", "<F33>", ":w<CR> :!cmake -S '%:p:h' -B '%:p:h/cmakeBuild'<CR> :!make -C '%:p:h/cmakeBuild'<CR>", opts)
--compile and run
keymap(
	"n",
	"<F34>",
	":w<CR> :!cmake -S '%:p:h' -B '%:p:h/cmakeBuild'<CR> :!make -C '%:p:h/cmakeBuild'<CR> :terminal %:p:h/cmakeBuild/main<CR>",
	opts
)

--compile
keymap("i", "<F33>", "<ESC> :w<CR> :!cmake -S '%:p:h' -B '%:p:h/cmakeBuild'<CR> :!make -C '%:p:h/cmakeBuild'<CR>", opts)
--compile and run
keymap(
	"i",
	"<F34>",
	"<ESC> :w<CR> :!cmake -S '%:p:h' -B '%:p:h/cmakeBuild'<CR> :!make -C '%:p:h/cmakeBuild'<CR> :terminal %:p:h/cmakeBuild/main<CR>",
	opts
)

--debug
keymap(
	"n",
	"<F32>",
	":w<CR> :!cmake -S '%:p:h' -B '%:p:h/cmakeBuild'<CR> :!make -C '%:p:h/cmakeBuild'<CR> :packloadall <CR> :packadd termdebug<CR> :Termdebug %:p:h/cmakeBuild/main<CR>",
	opts
)

-- Move text up and down
keymap("v", "<A-j>", ":m .+1<CR>==", opts)
keymap("v", "<A-k>", ":m .-2<CR>==", opts)
keymap("v", "p", '"_dP', opts)

-- Visual Block --
-- Move text up and down
keymap("x", "J", ":move '>+1<CR>gv-gv", opts)
keymap("x", "K", ":move '<-2<CR>gv-gv", opts)
keymap("x", "<A-j>", ":move '>+1<CR>gv-gv", opts)
keymap("x", "<A-k>", ":move '<-2<CR>gv-gv", opts)

-- Terminal --
-- Better terminal navigation
-- keymap("t", "<C-h>", "<C-\\><C-N><C-w>h", term_opts)
-- keymap("t", "<C-j>", "<C-\\><C-N><C-w>j", term_opts)
-- keymap("t", "<C-k>", "<C-\\><C-N><C-w>k", term_opts)
-- keymap("t", "<C-l>", "<C-\\><C-N><C-w>l", term_opts)
