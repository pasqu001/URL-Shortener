Rails.application.routes.draw do
  root 'urls#new'

  resources :urls
  get '/index' => 'urls#index', as: :index
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
