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

hl.window_rule({
        name      = "reading",
        match     = { title = "zathura" },
        float     = true,
        center    = true,
        size      = {"monitor_w*0.5", "monitor_h*0.9"},
})
