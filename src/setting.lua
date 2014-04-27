setting = {}

function setting.load()

end

function setting.draw()
  love.graphics.print("Controls:",100,100)
  love.graphics.print("A or Left Arrow",100,130)
  love.graphics.print("D or Right Arrow",100,145)
  love.graphics.print("Spacebar",100,160)
  love.graphics.print("Esc",100,175)
  love.graphics.line(225,130,225,200)
  love.graphics.print("Move Left",250,130)
  love.graphics.print("Move Right",250,145)
  love.graphics.print("Perform Action",250,160)
  love.graphics.print("Go Back",250,175)
end

function setting.update(dt)

end

function setting.keypressed(key,unicode)

end

function setting.keyreleased(key,unicode)
  if(key == "escape") then
    state = "main"
  end
end

function setting.mousepressed(x,y,button)

end

function setting.mousereleased(x,y,button)

end
