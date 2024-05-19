--script by BCTIX

-- ez settings lol

-- 0 is the middle of the screen
local xOffset = 0
local yOffset = 220

local size = 20

local setColor = 'ffffff'
local sungColor = 'ff0000'

local font = 'vcr'




function onCreate()
	makeLuaText('setlyric','',5000,screenWidth/2 + xOffset,screenHeight/2 + yOffset);
	setTextSize('setlyric',size);
	setTextAlignment('setlyric','left'); 
	setTextColor('sunglyric', setColor)
	setObjectCamera('setlyric', 'other')
	setTextFont('setlyric', 'vcr.ttf')
	addLuaText('setlyric');

	makeLuaText('sunglyric','',1000,screenWidth/2 + xOffset,screenHeight/2 + yOffset);
	setTextSize('sunglyric',size);
	setTextAlignment('sunglyric','left');
	setTextColor('sunglyric', sungColor)
	setObjectCamera('sunglyric', 'other')
	setTextFont('sunglyric', font)
	addLuaText('sunglyric');
end
function onUpdate()
setProperty('sunglyric.x', getProperty('setlyric.x')) -- make sure sung text is always ontop of set text
end
function onEvent(name, value1, value2)
	if name == 'karaokelyrics' then
	if value1 == 'set' or value1 == '' then
		--setProperty('setlyric.x', screenWidth/2-(#value2*11)+ xOffset) --attempt to emulate center alignment
		setTextString('setlyric', value2)
		setTextString('sunglyric', '')
	end
	if value1 == 'sung' then
		setTextString('sunglyric', value2)
	end
	end
end