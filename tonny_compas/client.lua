local checkmap = false


function whenKeyJustPressed(key)
    if Citizen.InvokeNative(0x580417101DDB492F, 0, key) then
        return true
    else
        return false
    end
end

RegisterNetEvent('tonny_map:checkcompas', function(check)
    checkmap = check
end)

CreateThread(function()
	while true do
		TriggerServerEvent('tonny_map:compascheck')
		if checkmap == false then
			local MapCheck = function()
				local player = PlayerPedId()
				local playerOnMout = IsPedOnMount(player)
				local playerOnVeh = IsPedInAnyVehicle(player)
				if enableTypeRadar then
					if not playerOnMout and not playerOnVeh then
						SetMinimapType(0)
					elseif playerOnMout or playerOnVeh then
						SetMinimapType(0)
					end
				end
			end
		else
			local MapCheck = function()
				local player = PlayerPedId()
				local playerOnMout = IsPedOnMount(player)
				local playerOnVeh = IsPedInAnyVehicle(player)
				if enableTypeRadar then
					if not playerOnMout and not playerOnVeh then
						SetMinimapType(3)
					elseif playerOnMout or playerOnVeh then
						SetMinimapType(3)
					end
				end
			end
		end
		Wait(3000)
	end
end)