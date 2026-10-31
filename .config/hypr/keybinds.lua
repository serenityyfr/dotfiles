return function(terminal, menu)
  local mainMod = "SUPER"
  hl.bind(mainMod .. " + Return", hl.dsp.exec_cmd(terminal))
  hl.bind(mainMod .. " + Space", hl.dsp.exec_cmd(menu))
  hl.bind(mainMod .. " + C", hl.dsp.window.close())
  hl.bind(mainMod .. " + SHIFT + W", hl.dsp.exec_cmd("pkill waybar && waybar&"))

  hl.bind(mainMod .. " + h",  hl.dsp.focus({ direction = "left" }))
  hl.bind(mainMod .. " + j", hl.dsp.focus({ direction = "down" }))
  hl.bind(mainMod .. " + k",    hl.dsp.focus({ direction = "up" }))
  hl.bind(mainMod .. " + l",  hl.dsp.focus({ direction = "right" }))

  hl.bind(mainMod .. " + SHIFT + h",  hl.dsp.window.move({ direction = "left" }))
  hl.bind(mainMod .. " + SHIFT + j",  hl.dsp.window.move({ direction = "down" }))
  hl.bind(mainMod .. " + SHIFT + k",  hl.dsp.window.move({ direction = "up" }))
  hl.bind(mainMod .. " + SHIFT + l",  hl.dsp.window.move({ direction = "right" }))


  -- Switch workspaces with mainMod + [0-9]
  -- Move active window to a workspace with mainMod + SHIFT + [0-9]
  for i = 1, 10 do
    local key = i % 10
    hl.bind(mainMod .. " + " .. key,             hl.dsp.focus({ workspace = i}))
    hl.bind(mainMod .. " + SHIFT + " .. key,     hl.dsp.window.move({ workspace = i }))
  end

  -- Move/resize windows with mainMod + LMB/RMB and dragging
  hl.bind(mainMod .. " + mouse:272", hl.dsp.window.drag(),   { mouse = true })
  hl.bind(mainMod .. " + mouse:273", hl.dsp.window.resize(), { mouse = true })
end
