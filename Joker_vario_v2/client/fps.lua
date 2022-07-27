-------------------------------Scripter Danilo Giannotta #8366-----------------------------------

RegisterCommand("fps", function()
	MenuFps()
end)

function MenuFps()
    local fixfps = {}

    table.insert(fixfps, {label = "Colore", value = 'colore'})
    table.insert(fixfps, {label = "Distanza Bassa", value = 0.5})
    table.insert(fixfps, {label = "Distanza Media", value = 1.0})
    table.insert(fixfps, {label = "Distanza Alta", value = 75.0})

    ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'fps', {
        title    = "Gestione FPS",
        align    = 'top-left',
        elements = fixfps
    }, function(data, menu)
        
        if data.current.value == 'colore' then
            if not boostabilitato then
                SetTimecycleModifier("cinema")
                SetForceVehicleTrails(false)
                SetForcePedFootstepsTracks(false)
                boostabilitato = true
                ESX.ShowNotification("Hai cambiato i colori")
            elseif boostabilitato then
                SetTimecycleModifier("default")
                boostabilitato = false
                ESX.ShowNotification("Hai reimpostato i colori")
            end
        else
            if data.current.value == 0.5 then
                OverrideLodscaleThisFrame(0.5)
                SetLightsCutoffDistanceTweak(0.5)
                CascadeShadowsSetCascadeBoundsScale(0.0)	

                RopeDrawShadowEnabled(false)

                CascadeShadowsClearShadowSampleType()
                CascadeShadowsSetAircraftMode(false)
                CascadeShadowsEnableEntityTracker(true)
                CascadeShadowsSetDynamicDepthMode(false)
                CascadeShadowsSetEntityTrackerScale(0.0)
                CascadeShadowsSetDynamicDepthValue(0.0)
                CascadeShadowsSetCascadeBoundsScale(0.0)

                SetFlashLightFadeDistance(0.0)
                SetLightsCutoffDistanceTweak(0.0)
                DistantCopCarSirens(false)
                ESX.ShowNotification("Hai attivato la distanza bassa")
            elseif data.current.value == 1.0 then
                OverrideLodscaleThisFrame(1.0)
                SetLightsCutoffDistanceTweak(1.0)
                CascadeShadowsSetCascadeBoundsScale(0.5)	

                RopeDrawShadowEnabled(false)

                CascadeShadowsClearShadowSampleType()
                CascadeShadowsSetAircraftMode(false)
                CascadeShadowsEnableEntityTracker(true)
                CascadeShadowsSetDynamicDepthMode(false)
                CascadeShadowsSetEntityTrackerScale(0.0)
                CascadeShadowsSetDynamicDepthValue(0.0)
                CascadeShadowsSetCascadeBoundsScale(0.0)

                SetFlashLightFadeDistance(5.0)
                SetLightsCutoffDistanceTweak(5.0)
                DistantCopCarSirens(false)
                ESX.ShowNotification("Hai attivato la distanza media")
                
            elseif data.current.value == 75.0 then
                OverrideLodscaleThisFrame(75.0)
                SetLightsCutoffDistanceTweak(75.0)
                CascadeShadowsSetCascadeBoundsScale(1.0)	

                RopeDrawShadowEnabled(true)
                CascadeShadowsClearShadowSampleType()
                CascadeShadowsSetAircraftMode(false)
                CascadeShadowsEnableEntityTracker(true)
                CascadeShadowsSetDynamicDepthMode(false)
                CascadeShadowsSetEntityTrackerScale(5.0)
                CascadeShadowsSetDynamicDepthValue(3.0)
                CascadeShadowsSetCascadeBoundsScale(3.0)

                SetFlashLightFadeDistance(3.0)
                SetLightsCutoffDistanceTweak(3.0)
                DistantCopCarSirens(false)
                SetArtificialLightsState(false)
                ESX.ShowNotification("Hai attivato la distanza alta")

            
            end
        
        end


    end, function(data, menu)
        menu.close()
    end)
end