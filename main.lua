--[[ Names of upgrades:
Binary Encoder - costs 8 bytes
Multi-processing - costs 512 bytes
Data Cascade - costs 8192 bytes
--]]

require "mousepressed"
require "BinaryEncoder"
require "MultiProcessing"
require "DataCascade"
require "BottomPanel"
require "Efficiency"

love.window.setTitle("Data Incremental v0.1")

points = 8
screen = "bytes"

font = love.graphics.setNewFont(16)

function love.draw()
    love.graphics.setColor(1, 1, 1)
    font = love.graphics.setNewFont(16)
    if points < 1000000 then
    love.graphics.printf(string.format("A total of %.2f bytes are stored.", points), 250, 10, 300, "center")
    else
        love.graphics.printf(string.format("A total of %.2e bytes are stored.", points):gsub("e[%+0%-0]+", "e"), 250, 10, 300, "center")
    end
    love.mousepressed(x, y, button, istouch, presses)
    BinaryEncoderDisplay()
    MultiProcessingDisplay()
    DataCascadeDisplay()
    BottomPanelDisplay()
    EfficiencyDisplay()
end

function love.update(dt)
    points = points + BinaryEncoderEffect * dt
    BinaryEncoderDisplay()
    MultiProcessingDisplay()
    DataCascadeDisplay()
    BottomPanelDisplay()
    EfficiencyDisplay()
end