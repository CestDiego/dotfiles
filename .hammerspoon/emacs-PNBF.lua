
emacsMap = {
  b="left",
  f="right",
  p="up",
  n="down",
  m="return"
}

-- for k, v in pairs(emacsMap) do
--   hs.hotkey:bind({"ctrl"}, k, nil, function()
--       -- Released:
--       hs.eventtap.event.newKeyEvent({}, v, true):post()
--       hs.eventtap.event.newKeyEvent({}, v, false):post()
--                                    end, function()
--       -- Repeat:
--       hs.eventtap.event.newKeyEvent({}, v, true):setProperty(hs.eventtap.event.properties.keyboardEventAutorepeat, 1):post()
--   end)
-- end
