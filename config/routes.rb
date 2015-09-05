Rails.application.routes.draw do
  get 'auth/:provider/callback' => 'sessions#create'
  #get 'auth/failure', redirect('/')
  get 'signout' => 'sessions#destroy', as: 'signout'
end
