machine = {}

machine.asset = love.graphics.newImage("entity/assets/machine.png")

function machine.new(x,y)
  local temp = {}

  temp.x = x
  temp.y = y
  temp.health = 0
  temp.load = machine.load
  temp.draw = machine.draw
  temp.update = machine.update
  temp.keypressed = machine.keypressed
  temp.keyreleased = machine.keyreleased
  temp.mousepressed = machine.mousepressed
  temp.mousereleased = machine.mousereleased
  temp.inRange = machine.inRange
  temp.increaseHealth = machine.increaseHealth

  return temp
end

function machine:load()

end

function machine:draw()
  love.graphics.print("Health: "..self.health,self.x,(self.y - 10))
  love.graphics.draw(machine.asset,self.x,self.y)
end

function machine:update(dt)

end

function machine:keypressed(key,unicode)

end

function machine:keyreleased(key,unicode)
  if (key == " " and self:inRange(game.user.x) and self.health < 100) then
    self.health = self.health + game.user:getRepairValue()
  end
end

function machine:mousepressed(x,y,button)

end

function machine:mousereleased(x,y,button)

end

function machine:inRange(x)
  if (x > self.x and x < (self.x + 100)) then
    return true
  end
  return false
end
