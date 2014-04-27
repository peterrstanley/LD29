require("credits")
require("game")

state = "main"

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
    love.graphics.print("New Game",50,400)
    love.graphics.print("Settings",50,420)
    love.graphics.print("Credits",50,440)
    love.graphics.print("Quit",50,460)
  elseif (state == "game") then
   game.draw()
  elseif (state == "credits") then
   credits.draw()
  end
  love.graphics.print(state,10,10)
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
    if(x > 50 and x < 150 and y > 400 and y < 415) then
      state = "game"
    elseif(x > 50 and x < 150 and y > 420 and y < 435) then
      state = "settings"
    elseif(x > 50 and x < 150 and y > 440 and y < 455) then
      state = "credits"
    elseif(x > 50 and x < 150 and y > 460 and y < 475) then
      love.event.quit()
    end
  elseif (state == "game") then
    game.mousereleased(x,y,button)
  elseif (state == "credits") then
    credits.mousereleased(x,y,button)
  end
end
