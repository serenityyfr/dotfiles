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
      active_border   = { colors = { "rgba(33ccffee)", "rgba(00ff99ee)"}, angle = 45 },
      inactive_border = "rgba(595959aa)",
    },

    resize_on_border  = false,
    allow_tearing     = false,
    layout            = "dwindle",
  },

  decoration = {
    rounding       = 0,
    rounding_power = 0,

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
      passes    = 20,
      vibrancy  = 1.1696,
    },
  },
})
