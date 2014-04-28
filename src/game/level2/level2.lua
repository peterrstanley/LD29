level2 = {}
level2.assets = {
  background = love.graphics.newImage("game/level1/assets/level1.png")
}
local ch = ""

local machine1 = machine.new(100,450)
local machine2 = machine.new(300,450)

function level2.load()
  machine1:load()
  machine2:load()
end

function level2.draw()
  love.graphics.draw(level1.assets.background,0,0)
  love.graphics.print("level 2 ",50,325)
  machine1:draw()
  machine2:draw()
  game.user:draw()
end

function level2.update(dt)
  machine1:update(dt)
  machine2:update(dt)
  game.user:update(dt)
end

function level2.keypressed(key,unicode)
  machine1:keypressed(key,unicode)
  machine2:keypressed(key,unicode)
  game.user:keypressed(key,unicode)
end

function level2.keyreleased(key,unicode)
  machine1:keyreleased(key,unicode)
  machine2:keyreleased(key,unicode)
  game.user:keyreleased(key,unicode)

  if(machine1.health >= 100 and machine2.health >= 100) then
    game.cur_level = 3
  end
end

function level2.mousepressed(x,y,button)

end

function level2.mousereleased(x,y,button)

end
