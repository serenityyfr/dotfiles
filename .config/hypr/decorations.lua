-----------------------
---- LOOK AND FEEL ----
-----------------------
-- Refer to https://wiki.hypr.land/configuring/core/config-options/

hl.config({
  general = {
    gaps_in     = 2,
    gaps_out    = 0,
    border_size = 2,

    col = {
      active_border   = "rgb(b4bdc3)",
      inactive_border = "rgb(3d3734)",
    },

    resize_on_border  = false,
    allow_tearing     = false,
    layout            = "dwindle",
  },

  decoration = {
    rounding       = 1,
    rounding_power = 1,

    active_opacity   = 0.92,
    inactive_opacity = 0.8,

    shadow = {
      enabled      = true,
      range        = 4,
      render_power = 3,
      color        = 0xee1a1a1a,
    },

    blur = {
      enabled   = true,
      size      = 30,
      passes    = 10,
      vibrancy  = 1,
    },
  },
})
