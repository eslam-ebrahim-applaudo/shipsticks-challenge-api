Rails.application.routes.draw do
  namespace :api do
    resources :products, except: %i[show] do
      get :calculator, on: :collection
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
