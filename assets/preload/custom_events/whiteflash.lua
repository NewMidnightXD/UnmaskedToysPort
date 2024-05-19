function onCreate()
	makeLuaSprite('whiteflash', 'visuals/white', -150, -100)
	setObjectCamera('whiteflash', 'other')
	addLuaSprite('whiteflash', true)
	setBlendMode('whiteflash', 'add') 
	setProperty('whiteflash.alpha', 0)
  

end
function onEvent(name, value1, value2)
  if name == 'whiteflash' then
    setProperty('whiteflash.alpha', 1)
    doTweenAlpha('whiteflashbye', 'whiteflash', 0, 1, 'linear')
  end
end
function onUpdate()
  haha = false
  if getPropertyFromClass('flixel.FlxG', 'keys.justPressed.T') and not haha == true then
    setProperty('whiteflash.alpha', 1)
    doTweenAlpha('whiteflashbye', 'whiteflash', 0, 1, 'linear')
  end
end
