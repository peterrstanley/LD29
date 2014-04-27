credits = {}
local ch = ""
function credits.load()
end

function credits.draw()
  love.graphics.print("Credits",400,100)
  love.graphics.print("Developed By: Peter R Stanley",200,150)
  love.graphics.print(ch,400,300)
end

function credits.update(dt)
end

function credits.keypressed(key,unicode)
end

function credits.keyreleased(key,unicode)
  if (key == "escape") then
    state = "main"
  end
end

function credits.mousepressed(x,y,button)
end

function credits.mousereleased(x,y,button)
end
