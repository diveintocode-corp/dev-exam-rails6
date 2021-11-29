Rails.application.routes.draw do
  root to: 'buildings#index'
  resources :buildings, only: %i(index new create show )
end
