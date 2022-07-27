Citizen.CreateThread(function()	
	for i=1, #Blips, 1 do
		local blip = AddBlipForCoord(Blips[i].x, Blips[i].y, 130.51)
		SetBlipSprite (blip, Blips[i].id) -- Tipo Blip
		SetBlipDisplay(blip, 4)
		SetBlipScale(blip, Blips[i].scale) -- Grandezza Blip
		SetBlipColour (blip, Blips[i].color) -- Colore Blip
		SetBlipAsShortRange(blip, true)
		AddTextEntry('b'..Blips[i].x, Blips[i].name)
		BeginTextCommandSetBlipName("b"..Blips[i].x)
		EndTextCommandSetBlipName(blip)
	end
end)

Blips = {
	{name="bliptest",color=38, id=137, scale=0.7, x = 569.7883, y = -12.8332},
}