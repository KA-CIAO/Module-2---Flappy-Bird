ScoreState = Class{__includes = BaseState}

local gold = love.graphics.newImage('Gold.png')
local silver = love.graphics.newImage('Silver.png')
local bronze = love.graphics.newImage('Bronze.png')

function ScoreState:enter(params)
    self.score = params.score
end

function ScoreState:update(dt)
    if love.keyboard.wasPressed('enter') or love.keyboard.wasPressed('return') then
        gStateMachine:change('countdown')
    end
end

function ScoreState:render()
    love.graphics.setFont(flappyFont)
    love.graphics.printf('Oof! You lost!', 0, 64, VIRTUAL_WIDTH, 'center')

    love.graphics.setFont(mediumFont)
    love.graphics.printf('Score: ' .. tostring(self.score), 0, 100, VIRTUAL_WIDTH, 'center')
    
    if self.score < 1 then
    	bronzeWidth = bronze:getWidth()
        love.graphics.draw(bronze, VIRTUAL_WIDTH / 2 - bronzeWidth / 2 * 0.3,150,0,0.3,0.3)
    elseif self.score < 5 then
        silverWidth = silver:getWidth()
        love.graphics.draw(silver, VIRTUAL_WIDTH / 2 - silverWidth / 2 * 0.3,150,0,0.3,0.3)
    else
        goldWidth = gold:getWidth()
        love.graphics.draw(gold, VIRTUAL_WIDTH / 2 - goldWidth / 2 * 0.3,150,0,0.3,0.3)

    end

    love.graphics.printf('Press Enter to Play Again!', 0, 160, VIRTUAL_WIDTH, 'center')
end
