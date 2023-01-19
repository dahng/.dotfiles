-- Safely import
local setup, nvimtree = pcall(require, "nvim-tree")
if not setup then
    return
end

-- Setting
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- Enable
nvimtree.setup({
    -- disable window_picker for
    -- explorer to work well with
    -- window splits
    actions = {
        open_file = {
            window_picker = {
                enable = false,
            },
        },
    },
    git = {
        ignore = false,
    },
})
