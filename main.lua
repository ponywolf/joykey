-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------

display.setDefault("background", 0.2 )

-- store screen values
local cx, cy = display.contentCenterX, display.contentCenterY - 128
local w, h = display.contentWidth, display.contentHeight

local vjoy = require "com.ponywolf.vjoy"
local joykey = require "com.ponywolf.joykey"

-- lets build an on screen joystick

local leftStick = vjoy.newStick() -- default stick
local rightStick = vjoy.newStick(3) -- start at axis 3
leftStick.x, leftStick.y = 256, h - 196
rightStick.x, rightStick.y = w - 256, h - 196

local a = vjoy.newButton("buttonA")
local b = vjoy.newButton("buttonB")
local x = vjoy.newButton("buttonX")
local y = vjoy.newButton("buttonY")

-- place them
a.x, a.y = w - 256, cy
b.x, b.y = w, cy 
x.x, x.y = w - 128, cy + 128
y.x, y.y = w - 128, cy - 128

-- color those buttons for fun
a:setFillColor(1,0,0)
b:setFillColor(0,1,0)
x:setFillColor(0,0,1)
y:setFillColor(1,1,0)

local options = 
{
    text = "Hello World",     
    x = cx,
    y = 64,
    font = native.systemFont,   
    fontSize = 36,
    align = "center"  -- Alignment parameter
}
local status = display.newText(options)

local function key(event)
  print("phase:", event.phase, "keyName:", event.keyName )
  status.text = "event: phase: " .. event.phase .. " keyName: " .. event.keyName 
end

-- start joykey
joykey.start()

-- start key event listener
Runtime:addEventListener("key", key)