hs.hotkey.bind({"ctrl", "shift"}, "8", function()
  hs.reload()
end)

hs.hotkey.bind({}, 'F5', function()
    hs.reload()
end)

hs.hotkey.bind({}, 'F5', function()
    hs.reload()
end)

hs.hotkey.bind({"ctrl", "shift"}, 'p', function()
    hs.reload()
end)

local misen = {
  {"Emacs", nil, nil, nil, nil, hs.geometry.rect(52.0,77.0,1164.0,950.0)},
  {"Firefox Developer Edition", nil, nil, nil, nil, hs.geometry.rect(1228.0,77.0,1308.0,1301.0)},
  {"iTerm2", nil, nil, nil, nil, hs.geometry.rect(52.0,1044.0,1166.0,337.0)}

}

hs.eventtap.keyStroke({}, 'F2')
hs.eventtap.keyStroke({'cmd', 'option'}, 'h')
hs.eventtap.keyStroke({}, 'F1')
hs.eventtap.keyStroke({}, 'F2')
hs.eventtap.keyStroke({}, 'F3')

local iterm = hs.application("iTerm2")
local emacs = hs.application("Emacs")
local ff = hs.application("Firefox Developer Edition")

local running = hs.application.runningApplications()
for i, app in ipairs(running) do
  -- hide if not hidden
  if app:isHidden() == false then
    if app:name() ~= 'Finder' then
      app:hide()
    else
      -- except for Finder, for that, just close visible windows
      -- the 'Desktop' window will remain open
      for i,win in ipairs(app:visibleWindows()) do
        win:close()
      end
    end
  end
end

iterm:unhide();
emacs:unhide();
ff:unhide();

hs.layout.apply(misen)
