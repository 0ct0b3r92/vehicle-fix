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
    drawNotification("~g~The mechanic's working on your car. It should take around 15 seconds to complete.")
FreezeEntityPosition(GetVehiclePedIsUsing(GetPlayerPed(-1)), true)
	Citizen.Wait(15000)
FreezeEntityPosition(GetVehiclePedIsUsing(GetPlayerPed(-1)), false)
end)

RegisterNetEvent( 'fixNotification' )
AddEventHandler( 'fixNotification', function ()
    drawNotification("~g~The mechanic has repaired your car!")
end)

function drawNotification(text)
	SetNotificationTextEntry("STRING")
	AddTextComponentString(text)
	DrawNotification(true, false)
end