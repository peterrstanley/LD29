level1 = {}
level1.assets = {
  background = love.graphics.newImage("game/level1/assets/level1.png")
}
local ch = ""
local machine1 = machine.new(100,450)

function level1.load()
  machine1:load()
end

function level1.draw()
  love.graphics.draw(level1.assets.background,0,0)
  love.graphics.print("level 1 ",50,325)
  machine1:draw()
  game.user:draw()
end

function level1.update(dt)
  machine1:update(dt)
  game.user:update(dt)
end

function level1.keypressed(key,unicode)
  machine1:keypressed(key,unicode)
  game.user:keypressed(key,unicode)
end

function level1.keyreleased(key,unicode)
  machine1:keyreleased(key,unicode)
  game.user:keyreleased(key,unicode)

  if(machine1.health >= 100) then
    game.cur_level = 2
  end
end

function level1.mousepressed(x,y,button)

end

function level1.mousereleased(x,y,button)

end
