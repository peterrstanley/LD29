level3 = {}
level3.assets = {
  background = love.graphics.newImage("game/level1/assets/level1.png")
}
local ch = ""
local machine1 = machine.new(100,450)
local machine2 = machine.new(250,450)
local machine3 = machine.new(425,450)

function level3.load()
  machine1:load()
  machine2:load()
  machine3:load()
end

function level3.draw()
  love.graphics.draw(level1.assets.background,0,0)
  love.graphics.print("level 3 ",50,325)
  machine1:draw()
  machine2:draw()
  machine3:draw()
  game.user:draw()
end

function level3.update(dt)
  machine1:update(dt)
  machine2:update(dt)
  machine3:update(dt)
  game.user:update(dt)
end

function level3.keypressed(key,unicode)
  machine1:keypressed(key,unicode)
  machine2:keypressed(key,unicode)
  machine3:keypressed(key,unicode)
  game.user:keypressed(key,unicode)
end

function level3.keyreleased(key,unicode)
  machine1:keyreleased(key,unicode)
  machine2:keyreleased(key,unicode)
  machine3:keyreleased(key,unicode)
  game.user:keyreleased(key,unicode)

  if(machine1.health >= 100 and machine2.health >= 100 and machine3.health >= 100) then
    game.cur_level = "done"
  end
end

function level3.mousepressed(x,y,button)

end

function level3.mousereleased(x,y,button)

end
