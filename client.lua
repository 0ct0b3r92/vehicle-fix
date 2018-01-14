RegisterNetEvent( 'fixVehicle' )
AddEventHandler( 'fixVehicle', function()
    local ped = GetPlayerPed( -1 )
 
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

RegisterNetEvent( 'drawNotification' )
AddEventHandler( 'drawNotification', function()
    drawNotification("~g~Your vehicle is being repaired by the mechanic. Please wait 15 seconds.")
end)

function drawNotification(text)
	SetNotificationTextEntry("STRING")
	AddTextComponentString(text)
	DrawNotification(true, false)
end