Rails.application.routes.draw do
  root "gardens#index"
  resources :gardens do
    resources :plants, only: :create do
    end
  end
  resources :plants, only: :destroy do
    resources :completions, only: %i[new create show]
  end
end
