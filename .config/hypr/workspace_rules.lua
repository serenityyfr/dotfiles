hl.workspace_rule({
  workspace = 1,
  monitor = "DP-1",
  layout = "scrolling",
  layout_opts = {
    direction = "up",
    column_width = 1.0,
  }
})

hl.workspace_rule({
  workspace = 2,
  monitor = "DP-1",
  layout = "scrolling",
  default = true,
  layout_opts = {
    direction = "up",
    column_width = 1.0,
  }
})

hl.workspace_rule({
  workspace = 3,
  monitor = "DP-1",
  layout = "scrolling",
  layout_opts = {
    direction = "up",
    column_width = 1.0,
  }
})

hl.workspace_rule({
  workspace = 4,
  monitor = "DP-1",
  layout = "scrolling",
  layout_opts = {
    direction = "up",
    column_width = 1.0,
  }
})

hl.workspace_rule({
  workspace = 5,
  monitor = "DP-1",
  layout = "scrolling",
  layout_opts = {
    direction = "up",
    column_width = 1.0,
  }
})



hl.workspace_rule({
  workspace = 10,
  monitor = "HDMI-A-1",
  default = true,

  layout = "master",
  layout_opts = {
    allow_small_split = false,
    new_status = "slave",
    orientation = "left",
    focus_master_on_close = true,
  }
})

