Rails.application.routes.draw do
  resources :hearts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  devise_for :users, :controllers => { registrations: 'registrations' }

  root "posts#index"
  
  resources :posts do
    resources :comments
      member do
        put "like", to: "posts#upvote"
        put "dislike", to: "posts#downvote"
      end
  end

  resources :searches, only: [:index, :create]
  get "/searches/search", to: "searches#search", as: :search_searches
  post "searches/search", to: "searches#results"

  match 'heart', to: 'hearts#heart', via: :post

  match 'unheart', to: 'hearts#unheart', via: :delete
end
