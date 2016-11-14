Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'welcome#index'
  resources :users, except: [:index] do
    resources :order, except: [:update]

    collection do
      post '/login', to: 'users#login'
    end
  end
  resources :store, only: [:create, :show]
end
