require("entity/player")
require("entity/machine")

game = {}
local levels = {"1"}
local cur_level = 1
game.levels = {}

game.user = player.new(20,475)

for _,v in ipairs(levels) do
  require("game/level"..v.."/level"..v)
  game.levels[v] = level
end

function game.load()
  level1.load()
end

function game.draw()
  love.graphics.print(cur_level,700,10)
  if (cur_level == 1) then
    level1.draw()
  end
end

function game.update(dt)
  if (cur_level == 1) then
    level1.update(dt)
  end
end

function game.keypressed(key,unicode)
  if (cur_level == 1) then
    level1.keypressed(key,unicode)
  end
end

function game.keyreleased(key,unicode)
  if (cur_level == 1) then
    level1.keyreleased(key,unicode)
  end
end

function game.mousepressed(x,y,button)
  if (cur_level == 1) then
    level1.mousepressed(x,y,button)
  end
end

function game.mousereleased(x,y,button)
  if (cur_level == 1) then
    level1.mousereleased(x,y,button)
  end
end
