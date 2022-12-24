-- Event notes hooks
function onEvent(name, value1, value2)
	if name == 'noteaplha' then
		
		doTweenAlpha('hudAlpha2', 'iconP2', value1, value2, 'linear');
		doTweenAlpha('hudAlpha3', 'iconP1', value1, value2, 'linear');
		doTweenAlpha('hudAlpha4', 'healthBar', value1, value2, 'linear');
		doTweenAlpha('hudAlpha6', 'textlol', value1, value2, 'linear');
	end
end