function BottomPanelDisplay()
    font = love.graphics.setNewFont(14)

    -- Highlight Bytes --
    
    if screen == "bytes" then
        love.graphics.setColor(1, 1, 1)
        love.graphics.rectangle("line", 1, 569, 80, 30)
        love.graphics.setColor(0.3, 0.3, 0.3)
        love.graphics.rectangle("fill", 2, 570, 78, 28)
        love.graphics.setColor(1, 1, 1)
    else
        love.graphics.setColor(1, 1, 1)
        love.graphics.rectangle("line", 1, 569, 80, 30)
        love.graphics.setColor(0.2, 0.2, 0.2)
        love.graphics.rectangle("fill", 2, 570, 78, 28)
        love.graphics.setColor(1, 1, 1)
    end
    love.graphics.print("Bytes", 21, 575)

    -- Highlight Efficiency --

    if screen == "efficiency" then
        love.graphics.setColor(1, 1, 1)
        love.graphics.rectangle("line", 80, 569, 80, 30)
        love.graphics.setColor(0.3, 0.3, 0.3)
        love.graphics.rectangle("fill", 81, 570, 78, 28)
        love.graphics.setColor(1, 1, 1)
    else
        love.graphics.setColor(1, 1, 1)
        love.graphics.rectangle("line", 80, 569, 80, 30)
        love.graphics.setColor(0.2, 0.2, 0.2)
        love.graphics.rectangle("fill", 81, 570, 78, 28)
        love.graphics.setColor(1, 1, 1)
    end
    love.graphics.print("Efficiency", 85, 575)

    -- Highlight Layering --

    love.graphics.setColor(1, 1, 1)
    love.graphics.rectangle("line", 160, 569, 80, 30)
    love.graphics.setColor(0.2, 0.2, 0.2)
    love.graphics.rectangle("fill", 161, 570, 78, 28)
    love.graphics.setColor(1, 1, 1)

    love.graphics.print("Layering", 169, 575)
end