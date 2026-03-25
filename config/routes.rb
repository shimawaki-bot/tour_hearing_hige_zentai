Rails.application.routes.draw do
  resources :surveys, only: [:new, :create] do
    collection do
      get :thanks
    end
  end
  root "surveys#new"
  get "up" => "rails/health#show", as: :rails_health_check
end
