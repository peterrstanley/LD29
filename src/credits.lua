credits = {}
local ch = ""
function credits.load()
end

function credits.draw()
  love.graphics.print("Credits",200,100)
  love.graphics.print("Developed By: Peter R Stanley",200,125)

  love.graphics.print("Devleoped using:",200,200)
  love.graphics.print("Gimp v2.8",200,230)
  love.graphics.print("Love v 0.9.0",200,245)
  love.graphics.print("Gedit",200,260)

  love.graphics.print("Hit Escape to return to main menu",500,400)
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
