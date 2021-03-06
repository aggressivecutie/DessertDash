Rails.application.routes.draw do


  devise_for :users
  resources :users

  devise_for :dealers

  authenticate :dealer do
    resources :dealers
    resources :desserts
  end




  root 'static_pages#home'
  get 'static_pages/home'

  get 'static_pages/about_us'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
