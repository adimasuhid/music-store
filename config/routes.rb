Rails.application.routes.draw do
  root "songs#index"

  get "/songs", to: "songs#index"
  post "/songs", to: "songs#create"
  get "/songs/new", to: "songs#new"
  get "/songs/:id/edit", to: "songs#edit"
  delete "/songs/:id", to: "songs#destroy", as: :song

  resources :trials
end
