Rails.application.routes.draw do
  resources :portfolios, except: [:show]
  get 'angular-items', to: 'portfolios#angular'
  get 'portfolio/:id', to: 'portfolios#show', as: 'portfolio_show'

  root 'pages#home'
  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#about'

  resources :blogs do
    get :toggle_status
  end
end
