class DeviceController < ApplicationController
  def index
    @devices = Device.all
  end
end
