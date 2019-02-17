Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "home#show"

  resources :playlists, only: [:index]
  resources :app, only: [:index]
  get '/auth/spotify/callback', to: redirect('app/')
end
