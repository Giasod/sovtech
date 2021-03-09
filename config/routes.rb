Rails.application.routes.draw do
  resources :tasks do
    member do
      get :start
    end
  end
end
