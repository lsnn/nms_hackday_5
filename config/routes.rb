Rails.application.routes.draw do

  root 'device#index'
  mount ActionCable.server => "/cable"

end
