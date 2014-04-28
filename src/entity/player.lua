player = {}
player.repair_value = 20


player.asset = {
  move = love.graphics.newImage("entity/assets/player.png")
}

player.quad = {}
player.quad[1] = love.graphics.newQuad(0,0,50,100,200,100)
player.quad[2] = love.graphics.newQuad(50,0,50,100,200,100)
player.quad[3] = love.graphics.newQuad(100,0,50,100,200,100)
player.quad[4] = love.graphics.newQuad(150,0,50,100,200,100)

local ch = "";
local walk_swtich = .15
local walk_distance = .5
function player.new(x,y)
  local temp = {}
  temp.load = player.load
  temp.update = player.update
  temp.draw = player.draw
  temp.keypressed = player.keypressed
  temp.keyreleased = player.keyreleased
  temp.mousepressed = player.mousepressed
  temp.mousereleased = player.released
  temp.getRepairValue = player.getRepairValue
  temp.setRepairValue = player.setRepairValue

  temp.x = x
  temp.y = y
  temp.direction = ""
  temp.movement = 1

  return temp
end

function player:load()
  self.walk_time = 0;
end

function player:draw()
  love.graphics.draw(player.asset.move,player.quad[self.movement],self.x,self.y)
end

function player:update(dt)
  if (self.direction == "right") then
    self.walk_time = self.walk_time + dt
    self.x = (self.x + walk_distance)
    if(self.walk_time > walk_swtich) then
      if (self.movement >= 4) then
        self.movement = 1
      else
        self.movement = (self.movement + 1)
      end
      self.walk_time = 0
    end
  elseif (self.direction == "left") then
    self.walk_time = self.walk_time + dt
    self.x = (self.x - walk_distance)
    if(self.walk_time > walk_swtich) then
      if (self.movement >= 4) then
        self.movement = 1
      else
        self.movement = (self.movement + 1)
      end
      self.walk_time = 0
    end
  else
    self.walk_time = 0
    self.movement = 1
  end
end

function player:keypressed(key,unicode)
  if(key == "right" or key == "d") then
    self.direction = "right"
  elseif (key == "left" or key == "a") then
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
