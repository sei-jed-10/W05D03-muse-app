Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
root 'artists#index'
resources :artists, :songs
get "artists", to: "artists#index"
get "artists/new", to: "artists#new"
get "artists/:id", to: "artists#show"

post "artists", to: "artists#create"

get "artists/:id/edit", to: "artists#edit", as: :artist_edit
patch "artists/:id", to: "artists#update"

delete "artists/:id", to: "artists#destroy"

get "songs/new", to: "songs#new"
post "songs", to: "songs#create"


end
