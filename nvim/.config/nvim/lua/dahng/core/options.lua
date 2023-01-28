local opt = vim.opt

-- Line numbers
opt.relativenumber = true
opt.number = true

-- Indentation
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true

-- Line wrap
opt.wrap = false

-- Searching
opt.ignorecase = true
opt.smartcase = true

-- Cursor line
opt.cursorline = true

-- Backspace
opt.backspace = "indent,eol,start"

-- Clipboard
opt.clipboard:append("unnamedplus")

-- Splitting
opt.splitright = true
opt.splitbelow = true

opt.iskeyword:append("-")
