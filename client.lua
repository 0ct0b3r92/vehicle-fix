RegisterCommand("fix", function()
    local ped = PlayerPedId()

    if ( DoesEntityExist( ped ) and not IsEntityDead( ped ) ) then 
        if ( IsPedSittingInAnyVehicle( ped ) ) then 
            local vehicle = GetVehiclePedIsIn( ped, false )

            if ( GetPedInVehicleSeat( vehicle, -1 ) == ped ) then 
                SetVehicleEngineHealth( vehicle, 1000 )
                SetVehicleEngineOn( vehicle, true, true )
                SetVehicleFixed( vehicle )
            end  
        end 
    end 
end )

-- Designed by Lucifer
