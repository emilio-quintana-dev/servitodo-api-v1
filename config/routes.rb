Rails.application.routes.draw do
  post '/auth', to: "auth#create"
  get '/current_user', to: "auth#show"
end
