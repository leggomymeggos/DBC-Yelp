Rails.application.routes.draw do

  
  resources :categories, only: [:index] do
    resources :places, except: [:destroy] do
      resources :votes
      resources :reviews do
        resources :votes
      end
    end
  end

  get '/map' => 'maps#index'
  get '/script' => 'maps#script'

end
