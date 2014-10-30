Rails.application.routes.draw do

  
  resources :categories, only: [:index] do
  end

  resources :places, except: [:destroy] do
    resources :photos
    resources :votes
  end

  resources :reviews do
    resources :votes
  end
end
