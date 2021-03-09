Rails.application.routes.draw do
  resources :tasks do
    member do
      get :start
      get :complete
    end
  end
end
