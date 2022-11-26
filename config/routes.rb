Rails.application.routes.draw do
  devise_for :users
  root to: "sns_ruby_azure#index"

  resources :works, only: [:index, :show, :create] do
    resources :wages, only: [:show, :create]
    resource :comments, only: :create
  end

end
