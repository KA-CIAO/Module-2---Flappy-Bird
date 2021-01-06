PauseState = Class{__include = BaseState}

function PauseState:render()
	love.graphics.setFont(hugeFont)
	love.graphics.print("Paused", 0, VIRTUAL_HEIGHT / 2 - 28, VIRTUAL_WIDTH, 'center')

	love.graphics.setFont(flappyFont)
	love.graphics.print("Score: "..tostring(self.score), 0, VIRTUAL_HEIGHT / 2 - 30, VIRTUAL_WIDTH, 'center')
end

function PauseState:update(dt)
	if love.keyboard.wasPressed('p') then
		self.StateMachine:change('play')
	end
end

function PauseState:enter()

end

function PauseState:exit()

end
