hl.config({
        general = {
                gaps_in = 3,
                gaps_out = 20,
                float_gaps = 0,
                gaps_workspaces = 250,

                border_size = 3,
                ["col.active_border"] = "#ebbcba",
                ["col.inactive_border"] = "#6e6a86",

                resize_on_border = true,
                hover_icon_on_border = false,

                layout = "master",
                allow_tearing = false,
        },

        decoration = {
                rounding = 15,
                rounding_power = 1,

                active_opacity = 0.9,
                inactive_opacity = 0.85,
                fullscreen_opacity = 1.0,

                dim_inactive = 0,
                dim_strength = 0.5,
                dim_special = 0.0,
                dim_around = 0.4,

                blur = {
                        enabled = true,
                        size = 4,
                        passes = 3,
                        ignore_opacity = true,
                        new_optimizations = true,
                        contrast = 1,
                        popups = true,
                },

                shadow = {
                        enabled = false,
                        range = 1,
                        render_power = 1,
                        sharp = false,
                        offset = {8, 3},
                        color = 0x88ebbcba,
                        color_inactive = 0x00ebbcba,
                },

                glow = {
                        enabled = false,
                },
        },
})
