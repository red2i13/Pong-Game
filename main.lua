WINDOW_HEIGHT = 720
WINDOW_WIDTH = 1280
PADDLE_SPEED = 200

push = require 'push'

Class = require 'class'
require 'Paddle'
require 'Ball'
--Fix the game at respective values even if the windows is bigger
--Sometimes gpu drivers ignore the option vsync
VIRTUAL_WIDTH = 432
VIRTUAL_HEIGHT = 243
function love.load()
	love.window.setTitle('Pong Game')
	math.randomseed(os.time())
	love.graphics.setDefaultFilter('nearest', 'nearest')
	push:setupScreen(VIRTUAL_WIDTH, VIRTUAL_HEIGHT, WINDOW_WIDTH, WINDOW_HEIGHT,{
		fullscreen = false,
		resizable = false,
		vsync = false
	})
	min_dt = 1/60
	next_time = love.timer.getTime()
	smallFont = love.graphics.newFont('assets/fonts/startpixel.ttf', 9)
	scoreFont = love.graphics.newFont('assets/fonts/pixel.ttf', 32)
	Player1 = Paddle(10, 30, 5, 20)
	Player2 = Paddle(VIRTUAL_WIDTH - 10,VIRTUAL_HEIGHT - 50, 5, 20)
	ball = Ball(VIRTUAL_WIDTH / 2 - 2, VIRTUAL_HEIGHT / 2 - 2, 4, 4)
	gameState = 'start'
end

function love.keypressed(key)
	if key == 'escape' then
		love.event.quit()
	elseif key == 'enter' or key == 'return' then
		if gameState == 'start' then
			gameState = 'play'
		elseif gameState == 'win' then
			ball:reset()
			gameState = 'start'
		else
			gameState = 'start'
			ball:reset()
		end
		
	end
end

function print_fps()
	love.graphics.setFont(smallFont)
	love.graphics.setColor(0,1,0)
	love.graphics.print("FPS " .. tostring(love.timer.getFPS()), 15 , 10)
end

function love.update(dt)
	next_time = next_time + min_dt
	Player1:update(dt, (love.keyboard.isDown('w') == true and -1 or 0) + (love.keyboard.isDown('s') == true and 1 or 0))
	Player2:update(dt, (love.keyboard.isDown('up') == true and -1 or 0) + (love.keyboard.isDown('down') == true and 1 or 0))
	
	if ball:collide(Player1) then
		ball.ballDX = -ball.ballDX * 1.1
		ball.x = Player1.x + 5
		if ball.ballDY < 0 then
			ball.ballDY = -math.random(10, 150)
		else
			ball.ballDY = math.random(10, 150)
		end
	end

	if ball:collide(Player2) then

		ball.ballDX = -ball.ballDX * 1.1
		ball.x = Player2.x - 5
		if ball.ballDY < 0 then
			ball.ballDY = -math.random(10, 150)
		else
			ball.ballDY = math.random(10, 150)
		end
	end
	--wall colision
	if ball.y <= 0 then
		ball.ballDX = ball.ballDX * 1
		ball.ballDY = ball.ballDY * -1
	elseif  ball.y > VIRTUAL_HEIGHT - 4 then
		ball.ballDX = ball.ballDX * 1
		ball.ballDY = ball.ballDY * -1
	end
	--score update
	if ball.x < 0 then
		Player2.score = Player2.score + 1
		ball:reset()
		-- gameState = 'start'
	elseif ball.x > VIRTUAL_WIDTH then
		Player1.score = Player1.score + 1
		ball:reset()
		-- gameState = 'start'
	end
	--victory status
	if Player1.score == 10 or Player2.score == 10 then
		gameState = 'win'
		Player1.score = 0
		Player2.score = 0
	elseif gameState == 'play' then
		--replace with class ball method
		ball:update(dt)
	end
end


function love.draw()
	push:apply('start')
	love.graphics.clear(40/255, 45/255, 52/255, 255/255)
	love.graphics.setFont(smallFont)
	love.graphics.printf('Pong Made by RedLion', 0, 40, VIRTUAL_WIDTH, 'center' )
	print_fps()
	if gameState == 'start' then
		love.graphics.printf('Please press Enter', 0, 20, VIRTUAL_WIDTH, 'center')
	elseif gameState == 'win' then
		love.graphics.printf('PLAYER ' .. tostring(Player1.score == 10 and 1 or 2 .. ' WIN'), 0, 150, VIRTUAL_WIDTH, 'center')
		love.graphics.printf('Press Enter to restart!', 0, 20, VIRTUAL_WIDTH, 'center')
	else
		love.graphics.printf('Enjoy', 0, 20, VIRTUAL_WIDTH, 'center')
	end
	love.graphics.setFont(scoreFont)
	love.graphics.print(tostring(Player1.score), VIRTUAL_WIDTH /2 - 50, VIRTUAL_HEIGHT / 3)
	love.graphics.print(tostring(Player2.score), VIRTUAL_WIDTH /2 + 30, VIRTUAL_HEIGHT / 3)
	Player1:draw()
	Player2:draw()
	ball:render()
	push:apply('end')
	--lock the fps to 60
	-- local cur_time = love.timer.getTime()
	-- if next_time <= cur_time then
	-- 	next_time = cur_time
	-- 	return
	-- end
	-- love.timer.sleep(next_time - cur_time)

end