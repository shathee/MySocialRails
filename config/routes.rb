Rails.application.routes.draw do
  
  get 'greetings/hello'
  root "posts#index"

  devise_for :users
  # devise_for :users, :controllers => {registration:'registration'}
  resources :posts do
  	post 'comments', to: 'comments#create' 
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
end
