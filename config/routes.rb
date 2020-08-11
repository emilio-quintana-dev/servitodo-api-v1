Rails.application.routes.draw do
  get '/professionals', to: "professional#index"
  get '/professionals/:id', to: 'professional#show'

  post '/auth', to: "auth#create"
  post '/register', to: "auth#new"
  get '/current_user', to: "auth#show"

  get '/jobs/:userId', to: "job#index"
  post '/jobs', to: "job#create"
end
