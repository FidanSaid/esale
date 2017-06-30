Rails.application.routes.draw do

	
  get 'home/index'

	get 'contact', to: 'messages#new', as: 'contact'
  post 'contact', to: 'messages#create'


   devise_for :users, controllers: {
        sessions: 'users/sessions'
      }
  resources :categories
  
  resources :sales do
    resources :assets, only: [:create]
  end
  root 'sales#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
