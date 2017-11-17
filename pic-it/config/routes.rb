Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  devise_for :users, :controllers => { registrations: 'registrations' }

  root "posts#index"
  
  resources :posts do
    resources :comments
  end

  resources :searches, only: [:index, :create]
  get "/searches/search", to: "searches#search", as: :search_searches
  post "searches/search", to: "searches#results"
end
