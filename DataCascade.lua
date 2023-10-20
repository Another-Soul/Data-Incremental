DataCascadePrice = 8192
DataCascadePower = 1
DataCascadeEffect = 1
DataCascadePurchases = 0

function DataCascadeDisplay()
    if screen == "bytes" then
        love.graphics.setLineWidth(2)
        love.graphics.setLineStyle("rough")

        love.graphics.setColor(1, 1, 1)
        love.graphics.rectangle("line", 200, 220, 150, 30)
        love.graphics.setColor(0.2, 0.2, 0.2)
        love.graphics.rectangle("fill", 201, 221, 148, 28)
        love.graphics.setColor(1, 1, 1)

        font = love.graphics.setNewFont(14)
        love.graphics.printf("Data Cascade (" .. DataCascadePurchases .. ")", 0, 227, 185, "right")
        font = love.graphics.setNewFont(12)

        if DataCascadePrice < 1000000 then -- 1e6 is threshold for scientific notation --
            love.graphics.printf(string.format("Cost: %.2f bytes", DataCascadePrice), 200, 227, 150, "center")
        else
            love.graphics.printf(string.format("Cost: %.2e bytes", DataCascadePrice):gsub("e[%+0%-0]+", "e"), 200, 227, 150, "center")
        end

        love.graphics.printf("Power: +×" .. DataCascadePower .. " to Multi-Processing", 160, 255, 1600, "left")
        love.graphics.printf("Effect: ×" .. DataCascadeEffect .. " to Multi-Processing", 160, 270, 1600, "left")
    end
end