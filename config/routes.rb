Rails.application.routes.draw do
  get 'topics/index'
  get 'topics/show'
  get 'topics/new'
  get 'topics/edit'
  # kind of route
  # controller#method_name
  root 'subs#index'

  # get 'subs/new'
  # get '/turkey', to: 'subs#new'

  # post '/subs', to: 'subs#create'
  # #  :id placeholder for the id number
  # put '/subs/:id', to: 'subs#update'
  # delete '/subs/:id', to: 'subs#delete'

  # embeded routes, nested routes
  resources :subs do
    resources :topics
  end

  resources :topics do
    resources :comments
  end


end

