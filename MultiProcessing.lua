MultiProcessingPrice = 512
MultiProcessingPower = 1
MultiProcessingEffect = 1
MultiProcessingPurchases = 0

function MultiProcessingDisplay()
    if screen == "bytes" then
        love.graphics.setLineWidth(2)
        love.graphics.setLineStyle("rough")

        love.graphics.setColor(1, 1, 1)
        love.graphics.rectangle("line", 200, 135, 150, 30)
        love.graphics.setColor(0.2, 0.2, 0.2)
        love.graphics.rectangle("fill", 201, 136, 148, 28)
        love.graphics.setColor(1, 1, 1)

        font = love.graphics.setNewFont(14)
        love.graphics.printf("Multi-Processing (" .. MultiProcessingPurchases .. ")", 0, 142, 185, "right")
        font = love.graphics.setNewFont(12)

        if MultiProcessingPrice < 1000000 then -- 1e6 is threshold for scientific notation --
            love.graphics.printf(string.format("Cost: %.2f bytes", MultiProcessingPrice), 200, 142, 150, "center")
        else
            love.graphics.printf(string.format("Cost: %.2e bytes", MultiProcessingPrice):gsub("e[%+0%-0]+", "e"), 200, 142, 150, "center")
        end

        love.graphics.printf("Power: +×" .. MultiProcessingPower .. " to Binary Encoder", 160, 170, 1600, "left")
        love.graphics.printf("Effect: ×" .. MultiProcessingEffect .. " to Binary Encoder", 160, 185, 1600, "left")
    end
end