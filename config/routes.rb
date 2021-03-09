Rails.application.routes.draw do
  root 'tasks#index'
  devise_for :users

  resources :tasks do
    member do
      get :start
      get :complete
    end
  end
end
