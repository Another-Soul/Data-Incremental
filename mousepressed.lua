function love.mousepressed(x, y, button, istouch, presses)
    if button == 1 then
        if screen == "bytes" then
            if (x > 200 and x < 350) and (y > 50 and y < 80) then
                if points >= BinaryEncoderPrice then -- Binary Encoder buying --
                    points = points - BinaryEncoderPrice
                    BinaryEncoderPrice = BinaryEncoderPrice * 1.5
                    BinaryEncoderPurchases = BinaryEncoderPurchases + 1
                    BinaryEncoderEffect = BinaryEncoderPurchases * BinaryEncoderPower
                end

            elseif (x > 200 and x < 350) and (y > 135 and y < 165) then
                if points >= MultiProcessingPrice then -- Multi-processing buying --
                    points = points - MultiProcessingPrice
                    MultiProcessingPrice = MultiProcessingPrice * 1.5
                    MultiProcessingPurchases = MultiProcessingPurchases + 1
                    MultiProcessingEffect = 1 + MultiProcessingPurchases * MultiProcessingPower
                    BinaryEncoderPower = MultiProcessingEffect
                    BinaryEncoderEffect = BinaryEncoderPurchases * BinaryEncoderPower
                end

            elseif (x > 200 and x < 350) and (y > 220 and y < 250) then
                if points >= DataCascadePrice then -- Data Cascade buying --
                    points = points - DataCascadePrice
                    DataCascadePrice = DataCascadePrice * 1.5
                    DataCascadePurchases = DataCascadePurchases + 1
                    DataCascadeEffect = 1 + DataCascadePurchases * DataCascadePower
                    MultiProcessingPower = DataCascadeEffect
                    MultiProcessingEffect = 1 + MultiProcessingPurchases * MultiProcessingPower
                    BinaryEncoderPower = MultiProcessingEffect
                    BinaryEncoderEffect = BinaryEncoderPurchases * BinaryEncoderPower
                end
            
            elseif (x > 80 and x < 160) and (y > 569 and y < 599) then
                screen = "efficiency"
            end
        

        elseif screen == "efficiency" then
            if (x > 170 and x < 290) and (y > 160 and y < 200) then
                if points >= 1000000 then
                    Efficiency = Efficiency + EfficiencyOnReset
                    EfficiencyOnReset = 0
                    points = 8

                    DataCascadePurchases = 0
                    DataCascadePower = 1
                    DataCascadeEffect = DataCascadePurchases * DataCascadePower + 1
                    DataCascadePrice = 8192

                    MultiProcessingPurchases = 0
                    DataCascadePower = 1
                    MultiProcessingEffect = MultiProcessingPurchases * MultiProcessingPower + 1
                    MultiProcessingPrice = 512

                    BinaryEncoderPurchases = 0
                    BinaryEncoderPower = (Efficiency / 100)
                    BinaryEncoderEffect = BinaryEncoderPurchases * BinaryEncoderPower
                    BinaryEncoderPrice = 8
                end

            elseif (x > 1 and x < 81) and (y > 569 and y < 599) then
                screen = "bytes"
            end
        end
    end
end