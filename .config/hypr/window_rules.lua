hl.window_rule({
  name="rule_wallpaper",
  match = { class = "waypaper" },
  float = true,
})

hl.window_rule({
  name="rule_terminal",
  match = { class = "foot" },
  opacity = "0.95 0.85",
  no_anim = true,
})

hl.window_rule({
  name="rule_reading",
  match = { title = "zathura" },
  float = true,
  dim_around = true,
  size = {1600, 900}
})

-- ###############
-- ###############

hl.window_rule({
    name  = "suppress-maximize-events",
    match = { class = ".*" },
    suppress_event = "maximize",
})

hl.window_rule({
    name  = "fix-xwayland-drags",
    match = {
        class      = "^$",
        title      = "^$",
        xwayland   = true,
        float      = true,
        fullscreen = false,
        pin        = false,
    },
    no_focus = true,
})

hl.window_rule({
    name  = "move-hyprland-run",
    match = { class = "hyprland-run" },

    move  = "20 monitor_h-120",
    float = true,
})


