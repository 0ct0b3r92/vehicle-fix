AddEventHandler( 'chatMessage', function(source, n, message)
    if (message == "/fix" ) then
        TriggerClientEvent('drawNotification', source)	
        Citizen.Wait(15000)
        TriggerClientEvent('fixVehicle', source)
		TriggerClientEvent('fixNotification', source)
    end 
end)

-- Designed by Lucifer, please don't edit.