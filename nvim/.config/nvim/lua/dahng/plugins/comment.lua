-- Safely import
local setup, comment = pcall(require, "Comment")
if not setup then
    return
end

-- Enable
comment.setup()