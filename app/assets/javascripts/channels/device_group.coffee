App.device_group = App.cable.subscriptions.create "DeviceGroupChannel",
  connected: ->
  	console.log 'connected'
    # Called when the subscription is ready for use on the server

  disconnected: ->
    # Called when the subscription has been terminated by the server

  received: (data) ->
  	switch data.state
	  	when "device_on"
	        @deviceOn(data.id)
	    when "device_off"
	     	@deviceOff(data.id)
	    else
    		#do nothing

  deviceOn: (device_id) ->
  	#jquerycode to change the color of the device with the id

  deviceOff: (device_id) ->
  	#jquerycode to change the color of the device with the id

  channel: ->
    @perform 'channel'

  testSubscription: ->
  	App.device_group.perform 'test_subscription'
