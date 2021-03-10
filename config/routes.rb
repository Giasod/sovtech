Rails.application.routes.draw do
  root 'tasks#index'
  devise_for :users, controllers: { session: 'users/sessions' }

  resources :tasks do
    member do
      get :start
      get :complete
    end
  end

  resources :users do
    member do
      get :approve_task
    end
  end
end
