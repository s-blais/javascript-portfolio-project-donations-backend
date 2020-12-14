Rails.application.routes.draw do

  namespace :api do
    namespace :v1 do
      resources :donations, only: [:index, :create]
    end
  end

end
