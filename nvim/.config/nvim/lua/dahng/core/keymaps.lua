vim.g.mapleader = " "

local keymap = vim.keymap

--
-- General keymaps
--

-- Copy the whole file
keymap.set("n", "<leader>cp", "<Esc>ggVGy<CR>")

-- Clear search
keymap.set("n", "<leader>nh", ":nohl<CR>")

-- 'x' does not copy
keymap.set("n", "x", '"_x')

-- Slit window
keymap.set("n", "<leader>sv", "<C-w>v") -- Vertically
keymap.set("n", "<leader>sh", "<C-w>s") -- Horizontally
keymap.set("n", "<leader>se", "<C-w>=") -- Equalize window's width
keymap.set("n", "<leader>sx", ":close<CR>") -- Close current splitted window

keymap.set("n", "<leader>to", ":tabnew<CR>") -- open new tab
keymap.set("n", "<leader>tx", ":tabclose<CR>") -- close current tab
keymap.set("n", "<leader>tn", ":tabn<CR>") -- go to next tab
keymap.set("n", "<leader>tp", ":tabp<CR>") -- go to previous tab

-- Nvim-tree
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")

-- Telescope
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>") -- find files within current working directory, respects .gitignore
keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>") -- find string in current working directory as you type
keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>") -- find string under cursor in current working directory
keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>") -- list open buffers in current neovim instance
keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>") -- list available help tags
