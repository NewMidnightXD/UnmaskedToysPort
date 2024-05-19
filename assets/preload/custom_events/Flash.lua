function onEvent(name, value1, value2)
	if name == 'Flash' then
		colour = tonumber(value2)
		duration = tonumber(value1)
		if colour == 4 then
			makeLuaSprite('flash', 'visuals/white', -150, -100)
			setObjectCamera('flash', 'other')
			addLuaSprite('flash', true)
			doTweenColor('flashcolour', 'flash', '0000FF', 0.00001)
			doTweenAlpha('flashalpha', 'flash', 0, duration)
			setBlendMode('flash', 'add')
		end
		if colour == 0 then
			makeLuaSprite('flash', 'visuals/white', -150, -100)
			setObjectCamera('flash', 'other')
			addLuaSprite('flash', true)
			doTweenColor('flashcolour', 'flash', '000000', 0.00001)
			doTweenAlpha('flashalpha', 'flash', 0, duration)
		end
		if colour == 1 then
			makeLuaSprite('flash', 'visuals/white', -150, -100)
			setObjectCamera('flash', 'other')
			addLuaSprite('flash', true)
			doTweenColor('flashcolour', 'flash', 'FFFFFF', 0.00001)
			doTweenAlpha('flashalpha', 'flash', 0, duration)
			setBlendMode('flash', 'add')
		end
		if colour == 2 then
			makeLuaSprite('flash', 'visuals/white', -150, -100)
			setObjectCamera('flash', 'other')
			addLuaSprite('flash', true)
			doTweenColor('flashcolour', 'flash', 'FF0000', 0.00001)
			doTweenAlpha('flashalpha', 'flash', 0, duration)
			setBlendMode('flash', 'add')
		end
		if colour == 3 then
			makeLuaSprite('flash', 'visuals/white', -150, -100)
			setObjectCamera('flash', 'other')
			addLuaSprite('flash', true)
			doTweenColor('flashcolour', 'flash', '00FF00', 0.00001)
			doTweenAlpha('flashalpha', 'flash', 0, duration)
			setBlendMode('flash', 'add')
		end
		if colour == 5 then
			makeLuaSprite('flash', 'visuals/white', -150, -100)
			setObjectCamera('flash', 'other')
			addLuaSprite('flash', true)
			doTweenColor('flashcolour', 'flash', 'FFFF00', 0.00001)
			doTweenAlpha('flashalpha', 'flash', 0, duration)
			setBlendMode('flash', 'add')
		end
		if colour == 6 then
			makeLuaSprite('flash', 'visuals/white', -150, -100)
			setObjectCamera('flash', 'other')
			addLuaSprite('flash', true)
			doTweenColor('flashcolour', 'flash', '00CCFF', 0.00001)
			doTweenAlpha('flashalpha', 'flash', 0, duration)
			setBlendMode('flash', 'add')
                end
		if colour == 7 then
			makeLuaSprite('flash', 'visuals/white', -150, -100)
			setObjectCamera('flash', 'other')
			addLuaSprite('flash', true)
			doTweenColor('flashcolour', 'flash', '8300FF', 0.00001)
			doTweenAlpha('flashalpha', 'flash', 0, duration)
			setBlendMode('flash', 'add')
	        end
	        if colour == 8 then
			makeLuaSprite('flash', 'visuals/white', -150, -100)
			setObjectCamera('flash', 'other')
			addLuaSprite('flash', true)
			doTweenColor('flashcolour', 'flash', 'FF007B', 0.00001)
			doTweenAlpha('flashalpha', 'flash', 0, duration)
			setBlendMode('flash', 'add')
                end
                if colour == 9 then
			makeLuaSprite('flash', 'visuals/white', -150, -100)
			setObjectCamera('flash', 'other')
			addLuaSprite('flash', true)
			doTweenColor('flashcolour', 'flash', 'FF7300', 0.00001)
			doTweenAlpha('flashalpha', 'flash', 0, duration)
			setBlendMode('flash', 'add')
                end
    end
end
