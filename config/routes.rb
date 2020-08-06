Rails.application.routes.draw do
  get '/professionals', to: "professional#index"
  post '/auth', to: "auth#create"
  get '/current_user', to: "auth#show"
end
