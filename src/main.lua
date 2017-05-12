
function love.load()
   image = love.graphics.newImage("assets/birb.jpg")
   love.graphics.setNewFont(12)
   love.graphics.setColor(0,0,0)
   love.graphics.setBackgroundColor(255,255,255)

   love.graphics.draw(image, 5, 5)
   love.graphics.print("Click and drag the cake around or use the arrow keys", 10, 10)
end

function love.update(dt)
  if love.keyboard.isDown("up") then
    num = num + 100 * dt -- this would increment num by 100 per second
  end
end

function love.draw()

end

function love.keypressed(key)
  if key == 'b' then
    print("The B key was pressed.")
  elseif key == 'a' then
    a_down = true
  end
end

function love.focus(f)
  if not f then
    print("LOST FOCUS")
  else
    print("GAINED FOCUS")
  end
end

function love.quit()
  print("Thanks for playing! Come back soon!")
end
