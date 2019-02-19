-----------------------------------------------------------------------------------------
--
-- main.lua
--
--This program puts a text box on the screen and when you touch the button it will print the text to the console.
--
--Created By: Aden Rao
--Created On: 2019/02/13
--
-----------------------------------------------------------------------------------------
display.setDefault( "background", 130/255, 75/255, 85/255 )

local answerTextField = native.newTextField( display.contentCenterX, display.contentCenterY + 250, 350, 75 )
answerTextField.id = "answer textField"

local enterButton = display.newImageRect( "assets/button.png", 250, 250 )
enterButton.x = display.contentCenterX
enterButton.y = display.contentCenterY
enterButton.id = "enter button"
 
local function enterButtonTouch( event )

    print( answerTextField.text ) 
    local myText = display.newText( "Your text has been received", 160, 375, native.systemFont, 25 )

    return true
end

enterButton:addEventListener( "touch", enterButtonTouch )
