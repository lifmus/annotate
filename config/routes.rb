Rails.application.routes.draw do
  root to: "web_pages#index"
  
  resources :web_pages
end
