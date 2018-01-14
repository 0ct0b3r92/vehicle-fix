AddEventHandler( 'chatMessage', function( source, n, message )
    if ( message == "/fix" ) then 
    	CancelEvent()
        TriggerClientEvent( 'fixVehicle', source )
    end 
end )

-- Designed by Lucifer
