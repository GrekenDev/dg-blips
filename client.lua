-- Ladda in konfigurationsfilen
Config = Config or {}
Citizen.CreateThread(function()
    for _, blipConfig in ipairs(Config.Blips) do
        local blip = AddBlipForCoord(blipConfig.pos.x, blipConfig.pos.y, blipConfig.pos.z)
        SetBlipSprite(blip, blipConfig.sprite)
        SetBlipDisplay(blip, 4)
        SetBlipScale(blip, blipConfig.scale)
        SetBlipColour(blip, blipConfig.color)
        SetBlipAsShortRange(blip, true)
        
        BeginTextCommandSetBlipName("STRING")
        AddTextComponentString(blipConfig.label)  -- Använd label från konfigurationen
        EndTextCommandSetBlipName(blip)
    end
end)
