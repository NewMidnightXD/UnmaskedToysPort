
function onEvent(name, value1, value2)
	if name == "openvideo" then
		doTweenAlpha('camHUDOff', 'camHUD', 0, 0.001, 'linear')
        doTweenAlpha('camGameOff', 'camGame', 0, 0.001, 'linear')
		startVideo('ending1');
	end 
end