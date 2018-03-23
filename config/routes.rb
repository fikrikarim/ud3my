Rails.application.routes.draw do
  resources :groups
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/groups/:id/attendants', to: 'groups#attendants', as: 'group_attendants'
  post '/groups/:id/add_attendant/:user_id', to: 'groups#add_attendant', as: 'add_attendant'
  delete '/groups/:id/remove_attendant/:user_id', to: 'groups#remove_attendant', as: 'remove_attendant'
  root to: "static_pages#home"
end
