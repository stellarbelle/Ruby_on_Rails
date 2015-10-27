Rails.application.routes.draw do

  get 'posts/create' => 'posts#create'

  post 'posts/create/:id' => 'posts#create'

  get 'posts/show'

  get 'posts/delete/:id' => 'posts#delete'

  get 'likes/create/:id' => 'likes#create'

  get 'likes/show/:id' => 'likes#show'

  get 'users/index'

  post 'users/login' => 'users#login'

  get 'users/logout' => 'users#logout'

  get 'users/show/:id' => 'users#show'

  get 'users/create'

  post 'users/create' => 'users#create'

  get 'users/destroy'

end
