Rails.application.routes.draw do
  resources :contacts
  resources :sessions, only: [:new, :create, :destroy]

  resources :tsubuyakis do
    collection do
      post :confirm
      get  :top
    end
  end
  root to: 'tsubuyakis#top'
  resources :users, only: [:new, :create, :show]
  resources :favorites, only: [:create, :destroy]
  
  mount LetterOpenerWeb::Engine, at: "/letter_opener" if Rails.env.development?

end