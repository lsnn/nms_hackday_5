# Be sure to restart your server when you modify this file. Action Cable runs in a loop that does not support auto reloading.
class DeviceGroupChannel < ApplicationCable::Channel
  def subscribed
    stream_from "devices_group"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end

  def channel
  end

  def test_subscription
  	Device.first.change
  end

end
