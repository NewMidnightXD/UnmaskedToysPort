local defaultX = 0
local defaultY = 0
local defaultAngle = 0
local defaultZoom = 1
function onCreate()
	setProperty('skipArrowStartTween', true) 
	
	makeLuaSprite('cinedown', 'visuals/cinedown', -350, 25)
	setObjectCamera('cinedown', 'hud')
	scaleObject('cinedown', 0.7, 0.7)
	addLuaSprite('cinedown', false)
	
	makeLuaSprite('cineup', 'visuals/cineup', -350, -75)
	setObjectCamera('cineup', 'hud')
	scaleObject('cineup', 0.7, 0.7)
	addLuaSprite('cineup', false)
	
	makeLuaSprite('black', nil, -500, 0)
	makeGraphic('black', 1920, 1080, '000000')
	setObjectCamera('black', 'hud')	
	addLuaSprite('black', true)	
end

function onSongStart()
	doTweenAlpha('blackBye', 'black', 0, 20, 'cubeIn')
end

function onTweenCompleted(t)
	if t == 'turn' then
		doTweenAngle('turn1', 'camGame', -1.5, crochet/300, 'sineInOut')
		doTweenAngle('turnlol', 'mirror', 1.5, crochet/300, 'sineInOut')
	end
	if t == 'turn1' then
		doTweenAngle('turn', 'camGame', 1.5, crochet/300, 'sineInOut')
		doTweenAngle('turnlol', 'mirror', -1.5, crochet/300, 'sineInOut')
	end
end
