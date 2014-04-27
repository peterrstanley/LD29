machine = {}

machine.asset = love.graphics.newImage("entity/assets/machine.png")

function machine.new(x,y)
  local temp = {}
  temp.load = machine.load
  temp.draw = machine.draw
  temp.update = machine.update
  temp.keypressed = machine.keypressed
  temp.keyreleased = machine.keyreleased
  temp.mousepressed = machine.mousepressed
  temp.mousereleased = machine.mousereleased
  temp.inRange = machine.inRange
  temp.increaseHealth = machine.increaseHealth
  
  temp.x = x
  temp.y = y
  temp.health = 0
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

function machine:increaseHealth(points)
  self.health = (self.health+points)
end
