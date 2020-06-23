Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # Get index of crud
  root to: 'projects#index'
  get '/projects', to: 'projects#index', as: 'projects'

  # get new form
  get '/projects/new', to: 'projects#new'

  # post a new project
  post '/projects/create', to: 'projects#create'

  # only one project
  get '/projects/:id', to: 'projects#show'

  # get edit form
  get '/projects/edit/:id', to: 'projects#edit'

  # update a project
  get '/projects/update', to: 'projects#update'

  # delete a project
  delete '/projects/delete/:id', to: 'projects#destroy'



  resources :projects

end
