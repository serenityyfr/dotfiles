local M = {}

local function looks_init()
        hl.config({
                general = {
                        border_size = 3,
                        gaps_in = 3,
                        ["col.active_border"] = "#ebbcba",
                        ["col.inactive_border"] = "#6e6a86",
                },
                decoration = {},
                blur = {},
                shadow = {},
                glow = {},
                animations = {
                        enabled = true;
                },
        })
end

M.setup = looks_init
return M
