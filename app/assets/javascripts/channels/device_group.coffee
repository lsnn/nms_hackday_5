$ ->

  App.device_group = App.cable.subscriptions.create "DeviceGroupChannel",
    connected: ->
      # Called when the subscription is ready for use on the server

    disconnected: ->
      # Called when the subscription has been terminated by the server

    received: (data) ->
    	switch data.state
  	  	when "device_on"
          @deviceOn(data.id)
  	    when "device_off"
  	     	@deviceOff(data.id)

    deviceOn: (device_id) ->
      button = 'button#device_' + device_id.toString()
      $(button).addClass('btn-success').html('ON')

    deviceOff: (device_id) ->
    	# button = 'button#device_' + device_id
      # $(button).addClass('btn-danger').html('OFF')

    testSubscription: ->
    	App.device_group.perform 'test_subscription'
