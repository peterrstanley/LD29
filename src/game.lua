require("entity/player")
require("entity/machine")
require("credits")

game = {}
local levels = {"1","2","3"}
game.cur_level = 1
game.levels = {}

game.user = player.new(20,475,20)

for _,v in ipairs(levels) do
  require("game/level"..v.."/level"..v)
  game.levels[v] = level
end

function game.load()
  level1.load()
  level2.load()
  level3.load()
  credits.load()
end

function game.draw()
  love.graphics.print(game.cur_level,700,10)
  if (game.cur_level == 1) then
    level1.draw()
  elseif (game.cur_level == 2) then
    level2.draw()
  elseif (game.cur_level == 3) then
    level3.draw()
  elseif (game.cur_level == "done") then
    credits.draw()
  end
end

function game.update(dt)
  if (game.cur_level == 1) then
    level1.update(dt)
  elseif (game.cur_level == 2) then
    level2.update(dt)
  elseif (game.cur_level == 3) then
    level3.update(dt)
  elseif (game.cur_level == "done") then
    credits.update(dt)
  end
end

function game.keypressed(key,unicode)
  if (game.cur_level == 1) then
    level1.keypressed(key,unicode)
  elseif (game.cur_level == 2) then
    level2.keypressed(key,unicode)
  elseif (game.cur_level == 3) then
    level3.keypressed(key,unicode)
  elseif (game.cur_level == "done") then
    credits.keypressed(key,unicode)
  end
end

function game.keyreleased(key,unicode)
  if (game.cur_level == 1) then
    level1.keyreleased(key,unicode)
  elseif (game.cur_level == 2) then
    level2.keyreleased(key,unicode)
  elseif (game.cur_level == 3) then
    level3.keyreleased(key,unicode)
  elseif (game.cur_level == "done") then
    credits.keyreleased(key,unicode)
  end
end

function game.mousepressed(x,y,button)
  if (game.cur_level == 1) then
    level1.mousepressed(x,y,button)
  elseif (game.cur_level == 2) then
    level2.mousepressed(x,y,button)
  elseif (game.cur_level == 3) then
    level3.mousepressed(x,y,button)
  elseif (game.cur_level == "done") then
    credits.mousepressed(x,y,button)
  end
end

function game.mousereleased(x,y,button)
  if (game.cur_level == 1) then
    level1.mousereleased(x,y,button)
  elseif (game.cur_level == 2) then
    level2.mousereleased(x,y,button)
  elseif (game.cur_level == 3) then
    level3.mousereleased(x,y,button)
  elseif (game.cur_level == "done") then
    credits.mousereleased(x,y,button)
  end
end
