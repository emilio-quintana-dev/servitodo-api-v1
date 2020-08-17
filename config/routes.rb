Rails.application.routes.draw do
  #         Professionals Routes
  # -------x--------------------x--------
  post '/professionals', to: "professionals#create"
  get '/professionals', to: "professionals#index"
  get '/professionals/:id', to: 'professionals#show'

  #         Auth/User Routes
  # -------x--------------------x--------
  post '/auth', to: "auth#create"
  post '/register', to: "auth#new"
  get '/current_user', to: "auth#show"

  #         Jobs Routes
  # -------x--------------------x--------
  post '/jobs', to: "jobs#create"
  get 'users/:userId/jobs', to: "jobs#index"
  patch '/jobs/:jobId', to: "jobs#update"
  delete '/jobs/:jobId', to: "jobs#destroy"

  #         Reviews Routes
  # -------x--------------------x--------
  post '/reviews', to: "reviews#create"

  #         Stripe Routes
  # -------x--------------------x--------
  post '/pay', to: "charges#create"
end
