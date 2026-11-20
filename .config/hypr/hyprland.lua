local terminal    = "foot"
local menu        = "rofi -show drun"

require('monitors')
require('enviroment')
require('workspace_rules')
require('app_rules')
require('decorations')
require('autostart')


require('misc')
require("input")
require("keybinds")(terminal, menu)
