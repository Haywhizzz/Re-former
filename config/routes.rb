Rails.application.routes.draw do
  resources :users, only: %i[create new edit]
end
