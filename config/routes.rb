Rails.application.routes.draw do
  root to: "dashboard#index"
  namespace :api do
      namespace :v1 do
        resources :videogames, only: [:index, :create, :destroy, :update]
      end
    end
end
