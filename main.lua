debug = true
playerImg = nil -- Player Image

function love.load(arg)
    playerImg = love.graphics.newImage('assets/Aircraft_03.png')
end

function love.update(dt)

end

function love.draw(dt)
    love.graphics.draw(playerImg, 100, 100)
end