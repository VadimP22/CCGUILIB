g = require("lib")
g.SetSide("right")
a = true


--b = g.CreateButton("Exit", 2,2)
--b.onclick = function()
--a = false
--end


pl = g.CreateButton("  ",2,3)
mn = g.CreateButton("  ",2,5)
num = g.CreateText(0,2,4)
set = g.CreateButton("Set signal", 5,3)
exit = g.CreateButton("Exit", 5, 5)
function pl.onclick()
num.tx = num.tx + 1
if num.tx > 15 then
num.tx = 15
end
end
function mn.onclick()
num.tx = num.tx - 1
if num.tx < 0 then
num.tx = 0
end
end
function set.onclick()
redstone.setAnalogOutput("back", num.tx)
end
function exit.onclick()
a = false
end

while a do
g.DrawM() 
sleep(0.4)
end


                                                                                                                                                                                                                                                                      
