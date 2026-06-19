hl.window_rule({
        match     = { class = "waypaper" },
        move      = {1000, 50},
        float     = true,
        monitor   = "HDMI-A-1",
})

hl.window_rule({
        match     = { class = "pavucontrol" },
        workspace = "1 silent",
})

hl.window_rule({
        match     = { class = "alacritty" },
        workspace = "10",
})
