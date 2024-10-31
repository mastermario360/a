-- Event notes hooks
function onEvent(name, value1, value2)
	if name == 'default cam' then
		zoom = tonumber(value1);
		if duration == 0 then
			setProperty('defaultCamZoom', defaultCamZoom);
		end
		--debugPrint('Event triggered: ', name, defaultCamZoom);
	end
end
