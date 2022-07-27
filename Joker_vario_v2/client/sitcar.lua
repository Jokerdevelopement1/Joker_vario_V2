local sitcarAbilitato = false
RegisterCommand('sitcar', function()
    local veicolo, distanza = ESX.Game.GetClosestVehicle()
	if distanza <= 5 then
        local playerPed = PlayerPedId()
		if not sitcarAbilitato then
            sitcarAbilitato = true
			AttachEntityToEntity(playerPed, veicolo, -1, 0.0, 0.0, 1.0, 0.0, 0.0, 0.0, false, false, false, false, 20, true)	
			ExecuteCommand('e sit5')
            DisablePlayerFiring(playerPed, true)
            ESX.ShowNotification('Ti sei attaccato al veicolo')
		else
            sitcarAbilitato = false
			DetachEntity(playerPed)
			ClearPedTasks(playerPed)
            DisablePlayerFiring(playerPed, false)
            ESX.ShowNotification('Ti sei stattaccato dal veicolo')
		end
    else
        ESX.ShowNotification('Non sei vicino ad un veicolo', 'error')
	end
end)