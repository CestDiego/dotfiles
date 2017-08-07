loggerInfo = hs.logger.new("My Settings", "info")

hyper = { "cmd", "alt", "shift", "ctrl" }

-- A global variable for the sub-key Hyper Mode
f18 = hs.hotkey.modal.new({}, "F18")

-- Hyper+key bindings for external handlers
-- extHyperBindings = {"a", "o", "u", "e", "j", "k", "p", ",", ".", "space"}

-- for i, v in ipairs(extHyperBindings) do
--   f18:bind({}, v, function()
--         -- Pressed:
--         hs.eventtap.event.newKeyEvent(hyper, v, true):post()
--       end, function()
--         -- Released:
--         hs.eventtap.event.newKeyEvent(hyper, v, false):post()
--         f18.triggered = true
--       end)
-- end

-- Hyper+key bindings for external handlers
controlBindings = {"a", "e", "[", "g"}

for i, v in ipairs(controlBindings) do
  f18:bind({}, v, nil, function()
        -- Released:
        hs.eventtap.keyStroke({"ctrl"}, v)
        f18.triggered = true
      end)
end

-- Window Sizing
f18.bind({}, "h", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()

  f.x = max.x
  f.y = max.y
  f.w = max.w / 2
  f.h = max.h
  win:setFrame(f)
end)

f18.bind({}, "l", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()

  f.x = max.x + (max.w / 2)
  f.y = max.y
  f.w = max.w / 2
  f.h = max.h
  win:setFrame(f)
end)

f18.bind({}, "k", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()

  f.x = max.x
  f.y = max.y
  f.w = max.w
  f.h = max.h / 2
  win:setFrame(f)
end)

f18.bind({}, "j", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()

  f.x = max.x
  f.y = max.y + (max.h / 2)
  f.w = max.w
  f.h = max.h / 2
  win:setFrame(f)
end)


f18.bind({}, "f", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()

  f.x = max.x
  f.y = max.y
  f.w = max.w
  f.h = max.h
  win:setFrame(f)
end)

hdic = {
  b="left",
  f="right",
  p="up",
  n="down",
  m="return"
}

for k, v in pairs(hdic) do
  f18:bind({}, k, function()
      -- Pressed:
      hs.eventtap.event.newKeyEvent({}, v, true):post()
    end, function()
      -- Released:
      hs.eventtap.event.newKeyEvent({}, v, false):post()
      f18.triggered = true
    end, function()
      -- Repeat:
      hs.eventtap.event.newKeyEvent({}, v, true):setProperty(hs.eventtap.event.properties.keyboardEventAutorepeat, 1):post()
    end)
end

-- Enter Hyper Mode
hyperPressed = function()
  f18.triggered = false
  f18:enter()
end

-- Leave Hyper Mode when F19 (caps) is pressed,
-- send ESCAPE if no other keys are pressed.
f19Released = function()
  f18:exit()
  if not f18.triggered then
    hs.eventtap.keyStroke({}, "escape")
  end
end

-- Leave Hyper Mode when F20 (return) is pressed,
-- send RETURN if no other keys are pressed.
f20Released = function()
  f18:exit()
  if not f18.triggered then
    hs.eventtap.keyStroke({}, "return")
  end
end

-- Bind the Hyper key to F19
hs.hotkey.bind({}, "F19", hyperPressed, f19Released)

-- Bind the Hyper key to F20
hs.hotkey.bind({}, "F20", hyperPressed, f20Released, function()
  hs.eventtap.event.newKeyEvent({}, "return", true):setProperty(hs.eventtap.event.properties.keyboardEventAutorepeat, 1):post()
end)

hs.hotkey.bind({"ctrl"}, "F20", nil, function() hs.eventtap.keyStroke({"ctrl"}, "return") end)
hs.hotkey.bind({"cmd"}, "F20", nil, function() hs.eventtap.keyStroke({"cmd"}, "return") end)
hs.hotkey.bind({"shift"}, "F20", nil, function() hs.eventtap.keyStroke({"shift"}, "return") end)

hs.hotkey.bind({"ctrl"}, ".", nil, function() hs.eventtap.keyStroke({"cmd"}, ".") end)
hs.hotkey.bind({"ctrl"}, ",", nil, function() hs.eventtap.keyStroke({"cmd"}, ",") end)
hs.hotkey.bind({"ctrl"}, ";", nil, function() hs.eventtap.keyStroke({"cmd"}, ";") end)
hs.hotkey.bind({"cmd", "ctrl"}, ".", nil, function() hs.eventtap.keyStroke({"cmd", "alt"}, ".") end)

require 'reload-config'
require 'caps-to-ctrl-and-esc'
require 'emacs-PNBF'

-- require 'caffeine'
-- require 'clipboard'
-- require 'launch-applications'
-- require 'window-management'

-- Lock System
-- hs.hotkey.bind(hyper, 12, 'Lock system', function() hs.caffeinate.lockScreen() end)
-- Sleep system
-- hs.hotkey.bind(hyper, 'S', 'Put system to sleep',function() hs.caffeinate.systemSleep() end)

-- Window Hints
-- hs.hints.style = 'vimperator'
-- hs.hotkey.bind(hyper, 'H', 'Show window hints', hs.hints.windowHints)
