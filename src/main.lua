require("credits")
require("game")

local state = "main"

function love.load()
  img_fn = {"main"}
  imgs = {}
  credits.load()
  game.load()
  for _,v in ipairs(img_fn) do
    imgs[v] = love.graphics.newImage("assets/"..v..".png")
  end 
end

function love.draw()
  if (state == "main") then
    for i,v in pairs(imgs) do
      love.graphics.draw(imgs[i],0,0,0)
    end
    love.graphics.print("Utopia Underground!!",200,100)
    love.graphics.print("Credits",700,550)
  elseif (state == "game") then
   game.draw()
  elseif (state == "credits") then
   credits.draw()
  end
end

function love.update(dt)
  if(state == "main") then
  elseif (state == "game") then
   game.update(dt)
  elseif (state == "credits") then
   credits.update(dt)
  end
end

function love.keypressed(key,unicode)
  if(state == "main") then
  elseif (state == "game") then
    game.keypressed(key,unicode)
  elseif (state == "credits") then
    credits.keypressed(key,unicode)
  end
end

function love.keyreleased(key,unicode)
  if(state == "main") then
    state = "credits"
  elseif (state == "game") then
    game.keyreleased(key,unicode)
  elseif (state == "credits") then
    credits.keyreleased(key,unicode)
  end
end

function love.mousepressed(x,y,button)
  if(state == "main") then
  elseif (state == "game") then
    game.mousepressed(x,y,button)
  elseif (state == "credits") then
    credits.mousepressed(x,y,button)
  end
end

function love.mousereleased(x,y,button)
  if(state == "main") then
  elseif (state == "game") then
    game.mousereleased(x,y,button)
  elseif (state == "credits") then
    credits.mousereleased(x,y,button)
  end
end
