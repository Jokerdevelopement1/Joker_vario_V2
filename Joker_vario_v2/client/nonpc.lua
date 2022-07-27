-------------------------------Scripter Danilo Giannotta #8366-----------------------------------

--ATTENZIONE QUESTO SCRIPT AUMENTERA UN PO IL RESMON SE NON VOLETE CHE AUMENTI TOGLIETE IL FILE--

-------------------------------------------------------------------------------------------------

Citizen.CreateThread(function()
    while true do
       Citizen.Wait(100) -- Prevenzione crash
        SetVehicleDensityMultiplierThisFrame(1.00) -- Settaggi traffico 
        SetPedDensityMultiplierThisFrame(3) -- Densità NPC
        SetRandomVehicleDensityMultiplierThisFrame(0.50) -- Seleziona la densità di veicoli che vuoi appaiano in giro
        SetParkedVehicleDensityMultiplierThisFrame(0.8) -- Seleziona la densità di veicoli che vuoi appaiano parcheggiati
        SetScenarioPedDensityMultiplierThisFrame(0.2, 0.2) -- Seleziona densità scenari
        SetGarbageTrucks(false) -- Niente camion che spawnano casualmente
        SetRandomBoats(false) -- Niente barche in acqua
        SetCreateRandomCops(false) -- Disabilità npc come poliziotti o medici che camminano, guidano o parcheggiano auto in giro
        SetCreateRandomCopsNotOnScenarios(false) -- Stoppa poliziotti che spawnano casualmente
        SetCreateRandomCopsOnScenarios(false) -- Stoppa poliziotti che spawnano negli scenari
        local x,y,z = table.unpack(GetEntityCoords(PlayerPedId()))
        ClearAreaOfVehicles(x, y, z, 1000, false, false, false, false, false)
        ClearAreaOfPeds(486.26, -3149.36, 6.07, 300, 1)
        RemoveVehiclesFromGeneratorsInArea(x - 500.0, y - 500.0, z - 500.0, x + 500.0, y + 500.0, z + 500.0);
    end
end)