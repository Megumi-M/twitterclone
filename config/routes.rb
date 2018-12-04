Rails.application.routes.draw do
  resources :tsubuyakis do
    collection do
      post :confirm
      get  :top
    end
  end
  root to: 'tsubuyakis#top'
end