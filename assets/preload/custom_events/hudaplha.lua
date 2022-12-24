-- Event notes hooks
function onEvent(name, value1, value2)
	if name == 'hudaplha' then
		doTweenAlpha('hudAlpha', 'camHUD', value1, value2, 'linear');
	end
end