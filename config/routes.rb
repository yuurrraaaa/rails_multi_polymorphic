Rails.application.routes.draw do
  resources :vector_data
  resources :aad_data
  resources :researches
  resources :aads
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
