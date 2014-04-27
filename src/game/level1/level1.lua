level1 = {}
level1.assets = {
  background = love.graphics.newImage("game/level1/assets/level1.png")
}

function level1.load()

end

function level1.draw()
  love.graphics.draw(level1.assets.background,0,0)
  love.graphics.print("level 1",50,50)
  love.graphics.print("This is a test",100,50)
end

function level1.update(dt)

end

function level1.keypressed(key,unicode)

end

function level1.keyreleased(key,unicode)

end

function level1.mousepressed(x,y,button)

end

function level1.mousereleased(x,y,button)

end
