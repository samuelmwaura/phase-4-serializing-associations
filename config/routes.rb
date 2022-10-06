Rails.application.routes.draw do
  resources :movies, only: [:index, :show]
  get '/movies/:id/summary', to: 'movies#summary'
  get '/movie_summaries', to: 'movies#summaries'
  resources :directors, only: [:index, :show]
  #resources :reviews, only: [:index] - we remove this bit because we dont want to render reviews unless it is part of it owner movie thus this information goes to the funcctionalities of the renderer serializer for the movies.
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
