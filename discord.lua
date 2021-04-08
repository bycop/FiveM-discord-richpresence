Citizen.CreateThread(function(source)
    while true do
        local player = GetPlayerPed(-1)
        
        Citizen.Wait(5*1000)

        SetDiscordAppId(APPID)
		local onlinePlayers = GetNumberOfPlayers()
        SetRichPresence(GetNumberOfPlayers().. " players connected" )

        SetDiscordRichPresenceAsset("large")
        SetDiscordRichPresenceAssetText(GetPlayerName(source))

        SetDiscordRichPresenceAssetSmall("min") 
        SetDiscordRichPresenceAssetSmallText("Health: "..(GetEntityHealth(player)-100))

    end
end)