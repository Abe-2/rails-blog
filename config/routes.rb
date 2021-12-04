Rails.application.routes.draw do
  devise_for :users
  root "reader#home"
  get 'home', to: 'reader#home'

  scope module: 'users' do
    resources :articles do
      resources :comments
    end
  end
end
