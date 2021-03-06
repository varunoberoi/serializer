Rails.application.routes.draw do
  root 'application#index'
  get 'about' => 'application#about'

  get 'add_trello_story/:id' => 'sessions#add_trello_story', as: :add_trello_story
  match 'trello' => 'sessions#trello', via: [:get, :post], as: :trello

  get 'session' => 'sessions#show'
  post 'add_source' => 'sessions#add_source'
  get 'log' => 'sessions#log', as: :log

  get 'all', to: redirect('/')
  get 'custom', to: redirect('/')

  get '/:session' => 'sessions#sync'
end
