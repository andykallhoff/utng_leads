Rails.application.routes.draw do
  devise_for :users
  root 'home#index'
  get 'more-info', to: 'home#more_info'

  #TODO: Errors Pages
  #get '/404', to: 'errors#not_found'

  resources :leads
  get 'interested', to: 'leads#interested'
  get 'thank-you', to: 'leads#thank_you'
end
