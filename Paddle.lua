Paddle = Class{}


function Paddle:init(x, y, width, height)
	self.width = width
	self.height = height
	self.x = x
	self.y = y
	self.score = 0
end

function Paddle:update(dt, direction)
	self.y = self.y  + direction * PADDLE_SPEED *dt
	self.y  = math.max(0 , self.y)
	self.y  = math.min(self.y , VIRTUAL_HEIGHT - self.height)
end

function Paddle:draw()
	love.graphics.rectangle('fill', self.x, self.y,  self.width,  self.height)
end
