Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'movies#index'
  post 'search', to: 'movies#search'
  get 'results', to: 'movies#results' 

  namespace :api do
    get 'lista_de_filmes', to: 'movies#index'
  end
end
