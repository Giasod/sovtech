Rails.application.routes.draw do
  root 'tasks#index'
  devise_for :users, controllers: { session: 'users/sessions' }

  resources :tasks do
    member do
      get :start
      get :complete
    end
  end
end
