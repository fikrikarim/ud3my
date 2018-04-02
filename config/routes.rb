Rails.application.routes.draw do
  resources :groups
  devise_for :users
  resources :users, path: "students"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/groups/:id/attendants', to: 'groups#attendants', as: 'group_attendants'
  get '/groups/:id/edit_submission', to: 'groups#edit_submission', as: 'group_edit_submission'
  patch '/groups/:id/update_submission', to: 'groups#update_submission', as: 'group_update_submission'

  post '/groups/:id/add_attendant/:user_id', to: 'attendants#add_attendant', as: 'add_attendant'
  delete '/groups/:id/remove_attendant/:user_id', to: 'attendants#remove_attendant', as: 'remove_attendant'

  root to: "static_pages#home"
end
