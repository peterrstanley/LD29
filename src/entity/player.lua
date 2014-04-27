player = {}
player.repair_value = 1


player.asset = {
  move = love.graphics.newImage("entity/assets/player.png")
}

local ch = "";
function player.new(x,y)
  local temp = {}
  temp.load = player.load
  temp.update = player.update
  temp.draw = player.draw
  temp.keypressed = player.keypressed
  temp.keyreleased = player.keyreleased
  temp.mousepressed = player.mousepressed
  temp.mousereleased = player.released

  temp.x = x
  temp.y = y
  temp.direction = ""

  return temp
end

function player:load()

end

function player:draw()
  love.graphics.draw(player.asset.move,self.x,self.y)
  love.graphics.print(self.direction,200,500)
end

function player:update(dt)
  if (self.direction == "right") then
    self.x = (self.x + 1)
  elseif (self.direction == "left") then
    self.x = (self.x - 1)
  end
end

function player:keypressed(key,unicode)
  if(key == "right") then
    self.direction = "right"
  elseif (key == "left") then
    self.direction = "left"
  end
end

function player:keyreleased(key,unicode)
  self.direction = ""
end

function player:mousepressed(x,y,button)

end

function player:mousereleased(x,y,button)

end

function player:getRepairValue()
  return player.repair_value
end

function player:setRepairValue(val)
  player.repair_value = val
end
