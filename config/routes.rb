Rails.application.routes.draw do
  resources :groups
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/groups/:id/attendants', to: 'groups#attendants', as: 'group_attendants'
  root to: "static_pages#home"
end
