Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  post "/messages", to: 'twilio#index'
  get "/messages", to: 'twilio#index'

end
