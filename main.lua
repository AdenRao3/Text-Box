-----------------------------------------------------------------------------------------
--
-- main.lua
--
--This program puts a text box on the screen and when you touch the ball it will print the text to the console.
--
--Created By: Aden Rao
--Created On: 2019/02/13
--
-----------------------------------------------------------------------------------------
display.setDefault( "background", 0, 255, 0 )

local answerTextField = native.newTextField( display.contentCenterX, display.contentCenterY + 250, 350, 75 )
answerTextField.id = "answer textField"

local enterButton = display.newImageRect( "assets/ball.png", 250, 250 )
enterButton.x = display.contentCenterX
enterButton.y = display.contentCenterY
enterButton.id = "enter button"
 
local function enterButtonTouch( event )

    print( answerTextField.text )

    return true
end

enterButton:addEventListener( "touch", enterButtonTouch )
