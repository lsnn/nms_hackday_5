class Device < ActiveRecord::Base

	def change
		# hier de update actie
		if state > 25
			ActionCable.server.broadcast "devices_group", {state: "device_on", id: id}
		else
			ActionCable.server.broadcast "devices_group", {state: "device_off", id: id}
		end
	end

end
