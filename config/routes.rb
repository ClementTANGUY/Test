Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/about" => "pages#about"

  resources :dishes

  resources :cooks do
    resources :dishes
  end

end
