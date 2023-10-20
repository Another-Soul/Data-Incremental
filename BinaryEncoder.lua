BinaryEncoderPrice = 8
BinaryEncoderPower = 1
BinaryEncoderEffect = 0
BinaryEncoderPurchases = 0

function BinaryEncoderDisplay()
    if screen == "bytes" then
        love.graphics.setLineWidth(2)
        love.graphics.setLineStyle("rough")

        love.graphics.setColor(1, 1, 1)
        love.graphics.rectangle("line", 200, 50, 150, 30)
        love.graphics.setColor(0.2, 0.2, 0.2)
        love.graphics.rectangle("fill", 201, 51, 148, 28)
        love.graphics.setColor(1, 1, 1)

        font = love.graphics.setNewFont(14)
        love.graphics.printf("Binary Encoder (" .. BinaryEncoderPurchases .. ")", 0, 57, 185, "right")
        font = love.graphics.setNewFont(12)

        if BinaryEncoderPrice < 1000000 then -- 1e6 is threshold for scientific notation --
            love.graphics.printf(string.format("Cost: %.2f bytes", BinaryEncoderPrice), 200, 57, 150, "center")
        else
            love.graphics.printf(string.format("Cost: %.2e bytes", BinaryEncoderPrice):gsub("e[%+0%-0]+", "e"), 200, 57, 150, "center")
        end

        love.graphics.printf(string.format("Power: +%.2f to Bytes gain", BinaryEncoderPower), 160, 85, 1600, "left")
        love.graphics.printf(string.format("Effect: +%.2f to Bytes gain", BinaryEncoderEffect), 160, 100, 1600, "left")
    end
end