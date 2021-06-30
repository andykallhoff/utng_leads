Rails.application.routes.draw do
  root 'home#index'

  #TODO: Errors Pages
  #get '/404', to: 'errors#not_found'

  get 'interested', to: 'home#interested'

  resources :leads
end
