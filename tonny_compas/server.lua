VorpCore = {}
local VorpInv

TriggerEvent("getCore", function(core)
    VorpCore = core
end)

VorpInv = exports.vorp_inventory:vorp_inventoryApi()

RegisterNetEvent('tonny_map:compascheck')
AddEventHandler("tonny_map:compascheck", function()
    count = VorpInv.getItemCount(source, Config.item)

	if count and count > 0 then
		TriggerClientEvent("tonny_map:checkcompas", source, true)
	else
		TriggerClientEvent("tonny_map:checkcompas", source, false)
	end
end)