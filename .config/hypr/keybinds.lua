return function(terminal, menu)
  local mainMod = "SUPER"

  -- Apps
  hl.bind(mainMod .. " + Return", hl.dsp.exec_cmd(terminal))
  hl.bind(mainMod .. " + Space", hl.dsp.exec_cmd(menu))
  hl.bind(mainMod .. " + SHIFT + S", hl.dsp.exec_cmd("hyprshot -m region --clipboard-only"))
  hl.bind(mainMod .. " + P", hl.dsp.exec_cmd("waypaper"))
  hl.bind(mainMod .. " + C", hl.dsp.window.close())
  hl.bind(mainMod .. " + F", hl.dsp.window.fullscreen())
  hl.bind(mainMod .. " + N", hl.dsp.exec_cmd("swaync-client -t -sw"))
  hl.bind(mainMod .. " + SHIFT + W", hl.dsp.exec_cmd("pkill waybar && waybar&"))

  hl.bind(mainMod .. " + h",  hl.dsp.focus({ direction = "left" }))
  hl.bind(mainMod .. " + j", hl.dsp.focus({ direction = "down" }))
  hl.bind(mainMod .. " + k",    hl.dsp.focus({ direction = "up" }))
  hl.bind(mainMod .. " + l",  hl.dsp.focus({ direction = "right" }))

  hl.bind(mainMod .. " + SHIFT + h",  hl.dsp.window.move({ direction = "left" }))
  hl.bind(mainMod .. " + SHIFT + j",  hl.dsp.window.move({ direction = "down" }))
  hl.bind(mainMod .. " + SHIFT + k",  hl.dsp.window.move({ direction = "up" }))
  hl.bind(mainMod .. " + SHIFT + l",  hl.dsp.window.move({ direction = "right" }))

  for i = 1, 10 do
    local key = i % 10
    hl.bind(mainMod .. " + " .. key,             hl.dsp.focus({ workspace = i}))
    hl.bind(mainMod .. " + SHIFT + " .. key,     hl.dsp.window.move({ workspace = i }))
  end

  -- Move/resize windows with mainMod + LMB/RMB and dragging
  hl.bind(mainMod .. " + mouse:272", hl.dsp.window.drag(),   { mouse = true })
  hl.bind(mainMod .. " + mouse:273", hl.dsp.window.resize(), { mouse = true })

-- Laptop multimedia keys for volume and LCD brightness
hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd("wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 5%+"), { locked = true, repeating = true })
hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"),      { locked = true, repeating = true })
hl.bind("XF86AudioMute",        hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"),     { locked = true, repeating = true })
hl.bind("XF86AudioMicMute",     hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"),   { locked = true, repeating = true })
hl.bind("XF86MonBrightnessUp",  hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%+"),                  { locked = true, repeating = true })
hl.bind("XF86MonBrightnessDown",hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%-"),                  { locked = true, repeating = true })

end
