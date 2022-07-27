RegisterCommand("fix",function(source)
    if IsPedSittingInAnyVehicle(PlayerPedId()) then
        local auto = GetVehiclePedIsIn(PlayerPedId(), false)

        exports['progressBars']:startUI(4000, "Riparando Auto")  --se volete rprogress sostituite la riga e mettete questo exports.rprogress:Start('Riparando Auto..', 5000)
        Citizen.Wait(4000)
        SetVehicleFixed(auto)
        SetVehicleDirtLevel(auto, 0.0)
    else
        ESX.ShowNotification("Devi essere in un veicolo per poterlo riparare!")
    end
end)

RegisterCommand("lavoro",function(source,args)
	if (ESX.PlayerData.job and ESX.PlayerData.job.name == 'unemployed') then
        ESX.ShowNotification("Sei disoccupato, trovati un lavoro!")
    else
        ESX.ShowNotification("Il tuo lavoro è ".. ESX.PlayerData.job.label .." con il grado ".. ESX.PlayerData.job.grade_label)
    end
end)

RegisterCommand("id",function()
    ESX.ShowNotification("Il tuo id è ".. GetPlayerServerId(NetworkGetEntityOwner(PlayerPedId())))
end)

Citizen.CreateThread(function()
	TriggerEvent('chat:addSuggestion', '/lavoro', 'Per sapere il tuo lavoro!',{})
	TriggerEvent('chat:addSuggestion', '/id', 'Per sapere il tuo id!',{})
	TriggerEvent('chat:addSuggestion', '/fix', 'Per ripare il veicolo!',{})
    TriggerEvent('chat:addSuggestion', '/sitcar', 'Per sederti su un veicolo!',{})
	TriggerEvent('chat:addSuggestion', '/fps', 'Per aprire il menu Fps!',{})
end)