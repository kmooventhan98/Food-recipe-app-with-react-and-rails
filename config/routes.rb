Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      get 'recipes/index'
      post 'recipes/create'
      get '/show/:id', to: 'recipes#show'
      delete '/destroy/:id', to: 'recipes#destroy'
      # get 'recipes/create'
      # get 'recipes/show'
      # get 'recipes/destroy'
    end
  end
  #get 'homepage/index'
  root 'homepage#index'
  get '/*path' => 'homepage#index'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
