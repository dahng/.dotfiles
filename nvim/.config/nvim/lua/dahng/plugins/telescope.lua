-- Safely import
local telescope_setup, telescope = pcall(require, "telescope")
if not telescope_setup then
    return
end

local actions_setup, actions = pcall(require, "telescope.actions")
if not actions_setup then
    return
end

-- Custom colorscheme configuration
local colorscheme = {
    background = "dark",
    telescope_project_name = {
        gui = {fg = "yellow", bg = "black"},
        cterm = {fg = "yellow", bg = "black"}
    },
    telescope_branch = {
        gui = {fg = "green", bg = "black"},
        cterm = {fg = "green", bg = "black"}
    },
    telescope_status = {
        gui = {fg = "white", bg = "red"},
        cterm = {fg = "white", bg = "red"}
    },
    telescope_filename = {
        gui = {fg = "blue", bg = "black"},
        cterm = {fg = "blue", bg = "black"}
    }
    -- More highlight groups can be added here
}

-- Enable
telescope.setup({
    -- configure custom mappings
    defaults = {
        mappings = {
            i = {
                ["<C-k>"] = actions.move_selection_previous, -- move to prev result
                ["<C-j>"] = actions.move_selection_next, -- move to next result
                ["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist, -- send selected to quickfixlist
            },
        },
    },
    colorscheme = colorscheme,
})

telescope.load_extension("fzf")
