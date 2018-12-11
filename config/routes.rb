Rails.application.routes.draw do
  resources :sessions, only: [:new, :create, :destroy]

  resources :tsubuyakis do
    collection do
      post :confirm
      get  :top
    end
  end
  root to: 'tsubuyakis#top'
  resources :users, only: [:new, :create, :show]

end