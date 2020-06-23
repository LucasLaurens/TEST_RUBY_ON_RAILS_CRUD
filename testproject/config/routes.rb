Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # Get index of crud
  root to: 'projects#index'
  get '/projects', to: 'projects#index', as: 'projects'

  # only one task
  get '/projects/:id', to: 'projects#show'



  resources :projects

  # create a task
  # post '/create', to: 'crud#create'
  # edit a task
  # put '/edit', to: 'crud#edit'
  # delete a task
  # # delete '/delete', to: 'crud#delete'
end
