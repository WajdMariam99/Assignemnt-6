-----------------------------------------------------------------------------------------
--
-- Created On: Wajd Mariam
-- Created By: May 15, 2019
-----------------------------------------------------------------------------------------
-- texts
local EnterText = display.newText ("Enter a Number:", 120, 200, native.systemFont, 25)
EnterText.x = 160
EnterText.y = 200
EnterText:setFillColor (255/255, 255/255, 255/255)


local AnswerText = display.newText ("Answer:", 120, 200, native.systemFont, 25)
AnswerText.x = 160
AnswerText.y = 125
AnswerText:setFillColor (255/255, 255/255, 255/255)


-- Textfields
local NumberTextfield = native.newTextField (160, 250 , 225, 40)
NumberTextfield.id = "NumberTextfield"


-- Calculate Button
local CalculateButton = display.newImageRect ("assets/sprites/CalculateButton.png", 200, 100)
CalculateButton.x = 160
CalculateButton.y = 375
CalculateButton.id = "Calculate Button"


local piSymbol = display.newImageRect ("assets/sprites/pi.png", 75, 75)
piSymbol.x = 160
piSymbol.y = 30
piSymbol.id = "Pi Symbol"

function round(num, numDecimalPlaces)
  if numDecimalPlaces and numDecimalPlaces>0 then
    local mult = 10^numDecimalPlaces
    return math.floor(num * mult + 0.5) / mult
  end
  return math.floor(num + 0.5)
end


-- Calculation Function

local function CalculateButtonTouch ( event )

local itt

local logic

local Answer



Answer = 0

itt = tonumber(NumberTextfield.text)


logic = -1



--Loops the itterations

for math = 1, itt, 1 do

	logic = logic*-1

	Answer = round (Answer + 4/(2*math-1)*logic, itt)

	AnswerText.text = ("Answer: "..Answer)



end 


end


--Event listeners

CalculateButton:addEventListener( "touch", CalculateButtonTouch )