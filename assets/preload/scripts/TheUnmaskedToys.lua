hudText = true --if the text with score accuracy and misses is on, in case you just want opponent note moving
songNameOnHUD = true --able to turn on and off for clearer HUD

function onCreatePost()
	setPropertyFromClass('ClientPrefs', 'timeBarType', 'Time Left')
	setProperty('scoreTxt.visible', false)
	
	makeLuaText('newGUI','', screenWidth, 0, getProperty('scoreTxt.y'))
	setTextSize('newGUI', 16)
	setTextAlignment('newGUI', 'center')
	setObjectCamera('newGUI', 'hud')
	addLuaText('newGUI')
	
	setObjectOrder('Smoke3', 1)
	setObjectOrder('cineup', 2)
	setObjectOrder('cinedown', 3)
	setObjectOrder('healthBarBG', 4)
	setObjectOrder('healthBar', 5)
	setObjectOrder('design', 6)	
	setObjectOrder('iconP1',7)
	setObjectOrder('iconP2', 8)
	setObjectOrder('newGUI', 9)
	setObjectOrder('part' .. f, 10)	
	setObjectOrder('black', 20)	
end

function opponentNoteHit()
       health = getProperty('health')
    if getProperty('health') > 0.225 then --limite
       setProperty('health', health- 0.01) --daño
	end
end

function onCreate()	
	makeLuaSprite('generalvignette', 'visuals/generalvignette', 0, 0)
	setObjectCamera('generalvignette', 'hud')
	addLuaSprite('generalvignette', true)
	
	setPropertyFromClass('GameOverSubstate', 'loopSoundName', 'GameOver')

	setPropertyFromClass("openfl.Lib", "application.window.title",'The Unmasked Toys: ' ..songName)
	function onDestroy()
	setPropertyFromClass("openfl.Lib", "application.window.title",'The Unmasked Toys')
	end
	function onResume()
	setPropertyFromClass("openfl.Lib", "application.window.title",'The Unmasked Toys: ' ..songName)
	end
	function onPause()
	setPropertyFromClass("openfl.Lib", "application.window.title",'The Unmasked Toys: ' ..songName.. ' (PAUSE)')
	end
	function onGameOver()
	setPropertyFromClass("openfl.Lib", "application.window.title",'The Unmasked Toys: ' ..songName.. ' (GAME OVER)')
	end	
end

function onBeatHit()
	if curBeat % 2 == 0 then
	triggerEvent('Add Camera Zoom', '0.045', '0.06')
	end
	if curBeat % 6 == 0 then
	triggerEvent('Add Camera Zoom', '0.055', '0.07')
	end	
	if curBeat % 1 == 0 then
	setProperty('iconP1.scale.x', 0.75)
	setProperty('iconP2.scale.x', 0.75)
	setProperty('iconP1.scale.y', 1.2)
	setProperty('iconP2.scale.y', 1.2)	
	end
end

function onUpdate()
	setProperty('speedLines.visible', false)
				if hudText == true then

setTextString('newGUI','SCORE: ' ..score.. ' • ACCURACY: ' ..math.floor(rating * 100).. '% • MISSES: ' ..getProperty('songMisses').. ' • COMBO: ' ..getProperty('combo').. ' • HEALTH: '..math.floor(getProperty('health') * 500 / 10).. '%', screenWidth, getProperty('scoreTxt.x'), getProperty('scoreTxt.y'))

				if getProperty('songMisses') == 0 and getProperty('combo') > 0 then
setTextString('newGUI','SCORE: ' ..score.. ' • ACCURACY: ' ..math.floor(rating * 100).. '% • FULL COMBO - ' ..getProperty('combo').. ' • HEALTH: '..math.floor(getProperty('health') * 500 / 10).. '%', screenWidth, getProperty('scoreTxt.x'), getProperty('scoreTxt.y'))
				end

				if botPlay == true then
setProperty('botplayTxt.visible', false)
setTextString('newGUI', 'BOTPLAY: ON • COMBO: ' ..getProperty('combo').. ' • HEALTH: '..math.floor(getProperty('health') * 500 / 10).. '%', screenWidth, getProperty('scoreTxt.x'), getProperty('scoreTxt.y'))
				end

				if math.floor(rating * 100) == 0 and botPlay == false then
setTextString('newGUI','SCORE: ' ..score.. ' • ACCURACY: ? • MISSES: ' ..getProperty('songMisses').. ' • COMBO: ' ..getProperty('combo').. ' • HEALTH: '..math.floor(getProperty('health') * 500 / 10).. '%', screenWidth, getProperty('scoreTxt.x'), getProperty('scoreTxt.y'))
				end

-- Song on HUD --

				if songNameOnHUD == true then
setTextString('newGUI','SCORE: ' ..score.. ' • ACCURACY: ' ..math.floor(rating * 100).. '% • MISSES: ' ..getProperty('songMisses').. ' • COMBO: ' ..getProperty('combo').. ' • HEALTH: '..math.floor(getProperty('health') * 500 / 10).. '% • ' ..songName, screenWidth, getProperty('scoreTxt.x'), getProperty('scoreTxt.y'))

				if getProperty('songMisses') == 0 and getProperty('combo') > 0 then
setTextString('newGUI','SCORE: ' ..score.. ' • ACCURACY: ' ..math.floor(rating * 100).. '% • FULL COMBO - ' ..getProperty('combo').. ' • HEALTH: '..math.floor(getProperty('health') * 500 / 10).. '% • ' ..songName, screenWidth, getProperty('scoreTxt.x'), getProperty('scoreTxt.y'))
				end

				if botPlay == true then
setProperty('botplayTxt.visible', false)
setTextString('newGUI', 'BOTPLAY: ON • COMBO: ' ..getProperty('combo').. ' • HEALTH: '..math.floor(getProperty('health') * 500 / 10).. '% • ' ..songName, screenWidth, getProperty('scoreTxt.x'), getProperty('scoreTxt.y'))
				end

				if math.floor(rating * 100) == 0 and botPlay == false then
setTextString('newGUI','SCORE: ' ..score.. ' • ACCURACY: ? • MISSES: ' ..getProperty('songMisses').. ' • COMBO: ' ..getProperty('combo').. ' • HEALTH: '..math.floor(getProperty('health') * 500 / 10).. '% • ' ..songName, screenWidth, getProperty('scoreTxt.x'), getProperty('scoreTxt.y'))
			end
		end
	end
end
