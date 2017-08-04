hs.hotkey.bind({"ctrl", "shift"}, "8", function()
  hs.reload()
end)

hs.hotkey.bind({}, 'F5', function()
    hs.reload()
end)

hs.alert.show("mise en place")

local misen = {
  {"Emacs", nil, "Thunderbolt Display", nil, nil, hs.geometry.rect(52.0,77.0,1164.0,950.0)},
  {"Google Chrome", nil, "Thunderbolt Display", nil, nil, hs.geometry.rect(1228.0,77.0,1308.0,1301.0)},
  {"iTerm2", nil, "Thunderbolt Display", nil, nil, hs.geometry.rect(52.0,1044.0,1166.0,337.0)}

}

hs.eventtap.keyStroke({'cmd', 'option'}, 'h')
hs.eventtap.keyStroke({}, 'F1')
hs.eventtap.keyStroke({}, 'F2')
hs.eventtap.keyStroke({}, 'F3')

hs.layout.apply(misen)
