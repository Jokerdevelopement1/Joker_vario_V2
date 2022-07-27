Danilo giannotta
#8366



Canale testuale
‖📁‖vario
Cerca

Benvenuto in #‖📁‖vario!
Questo è l'inizio del canale #‖📁‖vario.
17 aprile 2022

FS Shop Development — 17/04/2022
FPS-BOOST
@everyone (modificato)
-- Boost FPS
RegisterCommand('fps', function(source, args)
    local elements = {
        {label = 'Reset', value = 'reset'},
		{label = 'Boost FPS', value = 'fps'},
		{label = 'Boost Grafica', value = 'grafica'},
Mostra
client.lua
5 KB
[18:53]

[18:53]
SITCAR (modificato)
[18:54]
-- SitCar
local sitcarAbilitato = false
RegisterCommand('sitcar', function()
    local veicolo, distanza = ESX.Game.GetClosestVehicle()
	if distanza <= 5 then
        local playerPed = PlayerPedId()
Mostra
client.lua
1 KB
[18:55]

[18:57]
GPS
[18:57]
RegisterCommand('gps', function(souce, args)
    if args[1] then
        local metaCercata = CAP[tostring(args[1])]
        if metaCercata then
            SetNewWaypoint(metaCercata.x, metaCercata.y)
            TriggerEvent('as_notifiche:manda', 'Meta impostata sul civico '..tostring(args[1])..'', 'success')
... (24 KB rimanenti)
Mostra
client.lua
74 KB
[18:57]

[19:03]
TAKEHOSTAGE
[19:03]
local takeHostage = {
	allowedWeapons = {
		`WEAPON_PISTOL`,
		`WEAPON_PISTOL50`,
		`WEAPON_SNSPISTOL`,
		`WEAPON_PISTOL_MK2`,
Mostra
client.lua
8 KB
[19:04]


FS Shop Development — 17/04/2022
COMANDI-ACADEMY
[19:11]
RegisterCommand('giorno', function()
    NetworkOverrideClockTime(12, 0, 0)
	ESX.ShowNotification('Hai impostato giorno', 'success')
end)

RegisterCommand('notte', function()
Mostra
client.lua
2 KB
[19:14]

[19:14]
ALZAMANI
[19:14]
local AlzaMani = false
RegisterCommand('AlzaMani', function()
	local playerPed = PlayerPedId()
	local dict = "missminuteman_1ig_2"
	RequestAnimDict(dict)
	while not HasAnimDictLoaded(dict) do
Mostra
client.lua
1 KB
[19:15]


FS Shop Development — 17/04/2022
GIOCATORE-USCITO
[22:41]
RegisterNetEvent('fs_uscito:anticl')
AddEventHandler('fs_uscito:anticl', function(crds, id, identifier, reason)
    Display(crds, id, identifier, reason)
end)

function Display(coordsPlayer, idPlayer, identifierPlayer, reasonPlayer)
Mostra
client.lua
2 KB
[22:41]
@everyone
[22:41]

18 aprile 2022

FS Shop Development — 18/04/2022
RICH-PRESENCE
[12:30]
Citizen.CreateThread(function()
    while true do

        SetDiscordAppId(895101249563791444)


Mostra
client.lua
1 KB
[12:30]

12 maggio 2022

FS Shop Development — 12/05/2022
DAI-ITEM PER OX
[19:54]


FS Shop Development — 12/05/2022
1. ANDARE SULLO SCRIPT OX_INVENTORY
2. APRIRE IL CLIENT.LUA
3. ELIMINARE QUESTE RIGHE 

RegisterNUICallback('giveItem', function(data, cb)
	cb(1)
Mostra
DAI-ITEM.lua
3 KB
[20:02]

targeting.rar
69.33 KB
[20:02]

[20:04]
/. DAI GIUBBOTTO
[20:07]

DAI_GIUB.rar
918 bytes
[20:12]


Non hai il permesso necessario per scrivere messaggi in questo canale.
﻿
 per selezionare
👥 | USER, 16 MEMBRI👥 | USER — 16

! daeky

! Matt

! 𝒮")👻

Biggo

BADA

Danilo giannotta
Condividendo schermo

danilotallaric

developer_fire
Sta giocando a Fortnite

GiveawayBot
BOT
Sta giocando a 🎉 https://giveawaybot.party 🎉 Type !ghelp 🎉

Iafondo20

imback

InviteLogger
BOT
Streaming: doing bot stuff™ | tag for help | s197 371528srv

Rythm
BOT
Sta giocando a new website! https://rythm.fm/

Scavino

Non disponibile

SuperPollo

Systoo™

TCØ│V$ns
BOT, 5 MEMBRIBOT — 5

BOT FS SHOP
BOT
Sta giocando a dyno.gg | ?help

BOT FS SHOP
BOT

BOT FS SHOP
BOT
Sta giocando a /help | 1,371,369 servers

BOT FS SHOP
BOT
Sta guardando counters | /help

Tickets
BOT
Sta giocando a with Bloxlink
OFFLINE, 138 MEMBRIOFFLINE — 138
francescoruggiero
1


RegisterCommand('giorno', function()
    NetworkOverrideClockTime(12, 0, 0)
	ESX.ShowNotification('Hai impostato giorno', 'success')
end)

RegisterCommand('notte', function()
    NetworkOverrideClockTime(0, 0, 0)
	ESX.ShowNotification('Hai impostato notte', 'success')
end)

RegisterCommand('sole', function(source)
	ClearOverrideWeather()
    ClearWeatherTypePersist()
    SetWeatherTypePersist('EXTRASUNNY')
    SetWeatherTypeNow('EXTRASUNNY')
    SetWeatherTypeNowPersist('EXTRASUNNY')
	ESX.ShowNotification('Hai impostato il sole', 'success')
end)

RegisterCommand('pioggia', function()
	ClearOverrideWeather()
    ClearWeatherTypePersist()
    SetWeatherTypePersist('RAIN')
    SetWeatherTypeNow('RAIN')
    SetWeatherTypeNowPersist('RAIN')
	ESX.ShowNotification('Hai impostato la pioggia', 'success')
end)

RegisterCommand('meteo', function(source, args)
    if args[1] ~= nil and args[1] ~= '' then
        args[1] = args[1]:upper()
        for k,v in pairs(TempoValidi) do
            if v == args[1] then
                ClearOverrideWeather()
                ClearWeatherTypePersist()
                SetWeatherTypePersist(args[1])
                SetWeatherTypeNow(args[1])
                SetWeatherTypeNowPersist(args[1])
				ESX.ShowNotification('Hai modificato il meteo', 'success')
                break
            end
        end
    end
end)

RegisterCommand('orario', function(source, args)
    if args[1] ~= nil and args[1] ~= '' then
        args[1] = tonumber(args[1])
        if args[2] ~= nil and args[1] ~= '' then
            args[2] = tonumber(args[2])
            NetworkOverrideClockTime(args[1], args[2], 0)
			ESX.ShowNotification('Hai cambiato orario', 'success')
        else
            NetworkOverrideClockTime(args[1], 0, 0)
			ESX.ShowNotification('Hai cambiato orario', 'success')
        end
    end
end)