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

  temp.x = x
  temp.y = y
  return temp
end

function machine:load()

end

function machine:draw()
  love.graphics.draw(self.asset,self.x,self.y)
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
