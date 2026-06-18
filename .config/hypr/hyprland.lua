require("modules.monitors")
require("modules.keybinds")
require("modules.autostart")
require("modules.env")

-- =============================================================================
-- WINDOW + WORKSPACE RULES
-- =============================================================================
hl.window_rule({
        match     = { title = "firefox" },
        workspace = "9 silent",
})

hl.workspace_rule({ workspace = "10", monitor = "HDMI-A-1", layout = "master" })
hl.workspace_rule({ workspace = "9",  monitor = "HDMI-A-1", layout = "master" })
hl.workspace_rule({ workspace = "8",  monitor = "HDMI-A-1", layout = "master" })
hl.workspace_rule({ workspace = "7",  monitor = "HDMI-A-1", layout = "master" })
hl.workspace_rule({ workspace = "6",  monitor = "HDMI-A-1", layout = "master" })

hl.workspace_rule({ workspace = "5",  monitor = "DP-1",     layout = "dwindle" })
hl.workspace_rule({ workspace = "4",  monitor = "DP-1",     layout = "dwindle" })
hl.workspace_rule({ workspace = "3",  monitor = "DP-1",     layout = "dwindle" })
hl.workspace_rule({ workspace = "2",  monitor = "DP-1",     layout = "dwindle" })
hl.workspace_rule({ workspace = "1",  monitor = "DP-1",     layout = "dwindle" })

-- =============================================================================
-- INPUT
-- =============================================================================
hl.config({
        input = {
                kb_layout = "us",
                numlock_by_default = true,
                kb_options = "caps:escape",
        }
})

-- =============================================================================
-- LOADING MODULES
-- =============================================================================

local looks = require("looks")
looks.setup()
