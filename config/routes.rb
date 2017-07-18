Rails.application.routes.draw do

  get 'users/new'

  resources :experiences

  resources :projects

  resources :users

  mount Bootsy::Engine => '/bootsy', as: 'bootsy'

  resources :skills

  post 'contact', to: 'messages#create'

  get 'resume' => redirect("http://boshencui.com/resume.pdf")

  # user routes
  get  '/signup',  to: 'users#new'
  post '/signup',  to: 'users#create'

  get '/user', to: 'users#show'

  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  root 'pages#home'

end
