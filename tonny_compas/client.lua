local checkmap = false

RegisterNetEvent('tonny_map:checkcompas', function(check)
    checkmap = check
end)

CreateThread(function()
	while true do
		TriggerServerEvent('tonny_map:compascheck')
		if checkmap == false then
			SetMinimapType(0)
		else
			SetMinimapType(3)
		end
		Wait(3000)
	end
end)