Rails.application.routes.draw do
  get 'manage/health'
  get 'welcome/index'
  root 'welcome#index'

  get '/docs', to: 'welcome#index'

  resources :login, defaults: {format: :json}

  resources :password_reset
  post    "/password_reset",     to: "password_reset#create"

  resources :precondition_failed
  post    "/precondition_failed",     to: "precondition_failed#create"

  resources :internal_server_error
  post    "/internal_server_error",     to: "internal_server_error#create"

  resources :no_response
  post    "/no_response",     to: "no_response#create"

  resources :bad_request
  post    "/bad_request",     to: "bad_request#create"

  resources :unauthorized
  post    "/unauthorized",     to: "unauthorized#create"

  resources :forbidden
  post    "/forbidden",     to: "forbidden#create"

  resources :gateway_timeout
  post    "/gateway_timeout",     to: "gateway_timeout#create"




 # MUST BE LAST ITEM IN ROUTES
   get "*any", via: :all, to: "errors#not_found"
end
