-- Reload Automatically
function reloadConfig(files)
    doReload = false
    for _,file in pairs(files) do
      if file:sub(-4) == ".lua" and file:sub(2) ~= ".#" then
            doReload = true
        end
    end
    if doReload then
        hs.reload()
    end
end
hs.pathwatcher.new(os.getenv("HOME") .. "/.hammerspoon/", reloadConfig):start()
hs.alert.show("Config loaded")

hs.hotkey.bind({"cmd", "alt", "ctrl", "shift"}, "W", function()
  hs.alert.show("lelwat")
end)

--[[
hs.hotkey.bind({"cmd", "alt", "ctrl", "shift"}, "W", function()
  hs.notify.new({title="Hammerspoon", informativeText="Hello World"}):send()
end)
--]]

hs.hotkey.bind({"cmd", "alt", "ctrl", "shift"}, "UP", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()

  f.y = f.y - 10
  win:setFrame(f)
end)

hs.hotkey.bind({"cmd", "alt", "ctrl", "shift"}, "LEFT", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()

  f.x = f.x - 10
  win:setFrame(f)
end)

hs.hotkey.bind({"cmd", "alt", "ctrl", "shift"}, "RIGHT", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()

  f.x = f.x + 10
  win:setFrame(f)
end)

hs.hotkey.bind({"cmd", "alt", "ctrl", "shift"}, "DOWN", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()

  f.y = f.y + 10
  win:setFrame(f)
end)


-- WINDOW SIZING
hs.hotkey.bind({"cmd", "alt", "ctrl", "shift"}, "H", function()
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

hs.hotkey.bind({"cmd", "alt", "ctrl", "shift"}, "L", function()
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

hs.hotkey.bind({"cmd", "alt", "ctrl", "shift"}, "K", function()
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

hs.hotkey.bind({"cmd", "alt", "ctrl", "shift"}, "J", function()
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


hs.hotkey.bind({"cmd", "alt", "ctrl", "shift"}, "f", function()
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

-- Safari control of Menus!
function cycle_safari_agents()
    hs.application.launchOrFocus("Safari")
    local safari = hs.appfinder.appFromName("Safari")

    local str_default = {"Develop", "User Agent", "Default (Automatically Chosen)"}
    local str_ie10 = {"Develop", "User Agent", "Internet Explorer 10.0"}
    local str_chrome = {"Develop", "User Agent", "Google Chrome — Windows"}

    local default = safari:findMenuItem(str_default)
    local ie10 = safari:findMenuItem(str_ie10)
    local chrome = safari:findMenuItem(str_chrome)

    if (default and default["ticked"]) then
        safari:selectMenuItem(str_ie10)
        hs.alert.show("IE10")
    end
    if (ie10 and ie10["ticked"]) then
        safari:selectMenuItem(str_chrome)
        hs.alert.show("Chrome")
    end
    if (chrome and chrome["ticked"]) then
        safari:selectMenuItem(str_default)
        hs.alert.show("Safari")
    end
end
hs.hotkey.bind({"cmd", "alt", "ctrl", "shift"}, '7', cycle_safari_agents)

-- menubar

local caffeine = hs.menubar.new()
function setCaffeineDisplay(state)
    if state then
        caffeine:setTitle("AWAKE")
    else
        caffeine:setTitle("SLEEPY")
    end
end

function caffeineClicked()
    setCaffeineDisplay(hs.caffeinate.toggle("displayIdle"))
end

if caffeine then
    caffeine:setClickCallback(caffeineClicked)
    setCaffeineDisplay(hs.caffeinate.get("displayIdle"))
end

-- Application Watcher for watching purposes

function applicationWatcher(appName, eventType, appObject)
    if (eventType == hs.application.watcher.activated) then
        if (appName == "Finder") then
            -- Bring all Finder windows forward when one gets activated
            appObject:selectMenuItem({"Window", "Bring All to Front"})
        end
    end
end
local appWatcher = hs.application.watcher.new(applicationWatcher)
appWatcher:start()

-- Fake keyboard events
hs.hotkey.bind({"cmd", "alt"}, "V", function() hs.eventtap.keyStrokes(hs.pasteboard.getContents()) end)
