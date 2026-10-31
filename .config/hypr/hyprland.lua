hl.on("hyprland.start", function () 
  hl.exec_cmd("waybar")
  hl.exec_cmd("waypaper")
end)

require("monitors")
require('enviroment')
require("workspace_rules")
require("window_rules")
require('decorations')

local terminal    = "foot"
local menu        = "rofi -show drun"

require('misc')
require("input")
require("keybinds")(terminal, menu)
