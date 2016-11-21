# joykey and vjoy by Ponywolf

(http://i.imgur.com/pXln4NT.gif)

#### joykey.lua
Converts joystick axis events into key events in Corona SDK

##### Usage:
Just add this line to your main.lua
```
require("com.ponywolf.joykey").start()
```

This module turns gamepad axis events into keyboard events so we don't have to write separate code for joystick and keyboard control. Axis 1 & 2 will return up/down/left/right keyboard events and Axis 3 & 4 will return w/a/s/d keyboard events.

#### vjoy.lua
A modern on-screen joystick and button class that emulate gamepad axis and key events. Basically, if you have a game that works with gamepad input these on screen controls can be customized to make it work with on-screen controls

##### Usage:
Require the module in your main.lua
```
local vjoy = require "com.ponywolf.vjoy"
```

Add a virtual joystick
```
vjoy.newStick(startAxis, innerRadius, outerRadius)
```

###### StartAxis
The first axis of the two for your joystick (defaults to 1)

###### innerRadius
Size of the joystick control (defaults to 48px) or a filename of an image to load for the joystick forground

###### outerRadius
Size of the joystick movement area (defaults to 496px) or a filename of an image to load for the joystick background