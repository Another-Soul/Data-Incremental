Efficiency = 100
EfficiencyOnReset = 0

function EfficiencyDisplay()
    EfficiencyOnReset = (math.log(points + 1) ^ 2.4) / 54.56
    if screen == "efficiency" then
        love.graphics.setColor(1, 1, 1)
        love.graphics.rectangle("line", 170, 160, 120, 40)
        love.graphics.setColor(0.2, 0.2, 0.2)
        love.graphics.rectangle("fill", 171, 161, 118, 38)
        love.graphics.setColor(1, 1, 1)
        love.graphics.print("Convert", 202, 172)
        if points > 1000000 then
            love.graphics.printf(string.format("+%.2f%% Efficiency upon conversion.", EfficiencyOnReset), 300, 172, 400, "left")
        else
            love.graphics.printf(string.format("Get %.0f more Bytes to be able to convert.", 1000000 - points), 300, 172, 400, "left")
        end
        love.graphics.printf({{1, 1, 1}, "Your system's Efficiency is ", {0, 0.68, 1}, string.format("%.2f%%", Efficiency), {1, 1, 1}, string.format(", boosting Bytes gain by x%.2f.", Efficiency/100)}, 100, 60, 600, "center")
        love.graphics.printf(string.format("After storing more than 1e6 Bytes, you can reset your system and convert your Bytes for additional Efficiency, further boosting Bytes gain."), 200, 85, 400, "center")
    end
end