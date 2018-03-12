Rails.application.routes.draw do
  root 'home#index'

  get '/:shorten', to: 'home#visit', as: :visit

  resources :links
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
