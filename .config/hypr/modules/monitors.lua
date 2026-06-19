-- Vertical
hl.monitor({
        output    = "DP-1",
        mode      = "1920x1080@75",
        position  = "auto-center-left",
        scale     = 1,
        transform = 3,
})

hl.workspace_rule({ workspace = "5",  monitor = "DP-1",     layout = "scrolling", layout_opts = { direction = "down"} })
hl.workspace_rule({ workspace = "4",  monitor = "DP-1",     layout = "scrolling", layout_opts = { direction = "down"} })
hl.workspace_rule({ workspace = "3",  monitor = "DP-1",     layout = "scrolling", layout_opts = { direction = "down"} })
hl.workspace_rule({ workspace = "2",  monitor = "DP-1",     layout = "scrolling", layout_opts = { direction = "down"} })
hl.workspace_rule({ workspace = "1",  monitor = "DP-1",     layout = "scrolling", layout_opts = { direction = "down"} })



-- Main
hl.monitor({
        output    = "HDMI-A-1",
        mode      = "1920x1080@144",
        position  = "0x0",
        scale     = 1
})

hl.workspace_rule({ workspace = "10", monitor = "HDMI-A-1", layout = "master" })
hl.workspace_rule({ workspace = "9",  monitor = "HDMI-A-1", layout = "master" })
hl.workspace_rule({ workspace = "8",  monitor = "HDMI-A-1", layout = "master" })
hl.workspace_rule({ workspace = "7",  monitor = "HDMI-A-1", layout = "master" })
hl.workspace_rule({ workspace = "6",  monitor = "HDMI-A-1", layout = "master" })
