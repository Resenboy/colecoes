Rails.application.routes.draw do
  resources :collections do
    resources :items
  end

  root 'home#index'
end
