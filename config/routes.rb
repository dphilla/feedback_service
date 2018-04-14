Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get "/messages", to: 'twilio#index'

  post "/messages", to: 'twilio#create'

  get "/inbox", to: 'inbox#index'

end
